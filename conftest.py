import pytest
from playwright.sync_api import Browser, Page
from pages.desks_page import DesksPage
from pages.cart_page import CartPage
from pages.product_page import ProductPage


@pytest.fixture(scope="function")
def page(browser: Browser, playwright) -> Page:
    playwright.selectors.set_test_id_attribute("id")
    context = browser.new_context(viewport={'width': 1920, 'height': 1080})
    page = context.new_page()
    yield page
    context.close()


@pytest.fixture()
def desks_page(page):
    return DesksPage(page)


@pytest.fixture()
def cart_page(page):
    return CartPage(page)


@pytest.fixture()
def product_page(page):
    return ProductPage(page)
