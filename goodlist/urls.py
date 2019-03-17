from django.urls import path
from goodlist.views import *

urlpatterns = [
    path('', IndexPage.as_view(), name='index_url'),
    path('good/<str:slug>/', GoodDetail.as_view(), name='good_detail_url'),
    path('brand/<str:slug>/', BrandDetail.as_view(), name='brand_detail_url'),
    path('category/<str:slug>/', CategoryDetail.as_view(), name='category_detail_url'),
    path('categories/', CategoryList.as_view(), name='categories_list_url'),
    path('brands/', BrandList.as_view(), name='brand_list_url'),
]
