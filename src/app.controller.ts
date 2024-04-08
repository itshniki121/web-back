import { Controller, Get, Render } from '@nestjs/common';

@Controller()
export class AppController {
  @Get('/')
  @Render('home')
  getHomePage() {
    return { title: 'Home', pageType: 'home' };
  }

  @Get('/about')
  @Render('about')
  getAboutPage() {
    return { title: 'About', pageType: 'about' };
  }
  @Get('/contacts')
  @Render('contacts')
  getContactsPage() {
    return { title: 'Contacts', pageType: 'contacts' };
  }

  @Get('/products')
  @Render('products')
  getProductsPage() {
    return { title: 'Products', pageType: 'products' };
  }
  @Get('/reviews')
  @Render('reviews')
  getReviewsPage() {
    return { title: 'Reviews', pageType: 'reviews' };
  }

  @Get('/wish_list')
  @Render('wish_list')
  getWish_listPage() {
    return { title: 'Wish_list', pageType: 'Wish_list' };
  }

  getHello = () => {
    return undefined;
  };
}
