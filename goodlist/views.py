from django.shortcuts import render, get_object_or_404
from django.views import View
from .models import *
from django.core.paginator import Paginator

# Create your views here.
class IndexPage(View):
    def _get_num_objects(self, obj, num):
        return Paginator(obj.objects.all(), num).get_page(1).object_list

    def get(self, request):
        images = []
        for good in self._get_num_objects(Good, 3):
            images.append(good.images.first())
        context={
        'brands': self._get_num_objects(Brand, 4),
        'images' : images,
        'categories' : self._get_num_objects(Category, 4),
        }
        return render(request, 'goodlist/index.html', context)

class BrandList(View):
    def get(self, request):
        brands = Brand.objects.all()
        return render(request, 'goodlist/brand_list.html', {'brands':brands})


class CategoryList(View):
    def get(self, request):
        categories = Category.objects.all()
        return render(request, 'goodlist/category_list.html', {'categories':categories})


class GoodDetail(View):

    def get(self, request, slug):
        good = get_object_or_404(Good, slug__iexact=slug)
        models = good.base_good.models.all()
        return render(request, 'goodlist/good_detail.html', context={'good': good, 'models':models})

class DetailMixin():
    def _make_context(self, request, obj):
        base_goods = obj.base_goods.all()
        paginator = Paginator(base_goods, 10)

        page_number = request.GET.get('page', 1)
        page = paginator.get_page(page_number)

        if page.has_next():
            next_url = f'?page={page.next_page_number()}'
        else:
            next_url = ''

        if page.has_previous():
            prev_url = f'?page={page.previous_page_number()}'
        else:
            prev_url = ''

        return {
            'page':page,
            'is_paginated':page.has_other_pages(),
            'next':next_url,
            'prev':prev_url,
            }

class BrandDetail(DetailMixin, View):

    def get(self, request, slug):
        brand = get_object_or_404(Brand, slug__iexact=slug)
        context = self._make_context(request, brand)
        context.update({'brand':brand})
        return render(request, 'goodlist/brand_detail.html', context)


class CategoryDetail(DetailMixin, View):

    def get(self, request, slug):
        category = get_object_or_404(Category, slug__iexact=slug)
        context=self._make_context(request, category)
        context.update({'category':category})

        return render(request, 'goodlist/category_detail.html', context)
