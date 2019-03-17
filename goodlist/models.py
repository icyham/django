from django.db import models
from django.db.models.signals import pre_save
from django.utils.text import slugify
from django.shortcuts import reverse

class Brand(models.Model):

    name = models.CharField(max_length=50, db_index=True)
    slug = models.SlugField(max_length=50, unique=True)
    description = models.TextField()

    def get_absolute_url(self):
        return reverse('brand_detail_url', kwargs={'slug': self.slug})

    def __str__(self):
        return self.name


class BigCategory(models.Model):

    name = models.CharField(max_length=50, db_index=True)
    slug = models.SlugField(max_length=50, unique=True)

    def __str__(self):
        return self.name


class Category(models.Model):

    name = models.CharField(max_length=50, db_index=True)
    slug = models.SlugField(max_length=50, unique=True)
    big_category = models.ForeignKey(BigCategory, null=False, on_delete=models.CASCADE)
    description = models.TextField()

    def get_absolute_url(self):
        return reverse('category_detail_url', kwargs={'slug': self.slug})

    def __str__(self):
        return self.name


class Color(models.Model):
    # image = models.ImageField(upload_to=)
    name = models.CharField(max_length=50, db_index=True)
    slug = models.SlugField(max_length=50, unique=True)

    def __str__(self):
        return self.name


class Size(models.Model):

    name = models.CharField(max_length=5, unique=True)

    def __str__(self):
        return self.name


class Material(models.Model):

    name = models.CharField(max_length=50, db_index=True)
    slug = models.SlugField(max_length=50, blank=True)

    def __str__(self):
        return self.name


class Gender(models.Model):
    name = models.CharField(max_length=10, db_index=True)
    def __str__(self):
        return self.name


class BaseGood(models.Model):

    name = models.CharField(max_length=50, db_index=True)
    slug = models.SlugField(max_length=50, unique=True)
    show_name = models.BooleanField(default=False)
    brand = models.ForeignKey(Brand, null=False, on_delete=models.CASCADE, related_name='base_goods')
    category = models.ForeignKey(Category, null=False, on_delete=models.CASCADE, related_name='base_goods')
    description = models.TextField()
    sex = models.ForeignKey(Gender, null=False, on_delete=models.CASCADE)
    material = models.ManyToManyField(Material, blank=False, related_name='base_goods')

    def __str__(self):
        return self.name


class Good(models.Model):

    name = models.CharField(max_length=50, db_index=True)
    slug = models.SlugField(max_length=50, unique=True)
    base_good = models.ForeignKey(BaseGood, null=False, on_delete=models.CASCADE, related_name='models')
    color = models.ForeignKey(Color, null=False, on_delete=models.CASCADE)
    price = models.DecimalField(max_digits=9, decimal_places=2)
    sizes = models.ManyToManyField(Size, blank=False, related_name='goods', through='Sizing')
    date = models.DateTimeField(auto_now_add=True)
    class Meta:
        ordering = ['date']

    def get_absolute_url(self):
        return reverse('good_detail_url', kwargs={'slug': self.slug})

    def __str__(self):
        return self.name


class Sizing(models.Model):

    size = models.ForeignKey(Size, on_delete=models.CASCADE)
    good = models.ForeignKey(Good, on_delete=models.CASCADE)
    quantity = models.PositiveSmallIntegerField()
    reserved = models.PositiveSmallIntegerField()


class GoodImage(models.Model):

    name = models.CharField(max_length=50, db_index=True)
    slug = models.SlugField(max_length=50, unique=True)
    good = models.ForeignKey(Good, on_delete=models.CASCADE, related_name="images")
    image = models.ImageField(upload_to="static/media")

    def __str__(self):
        return self.name
