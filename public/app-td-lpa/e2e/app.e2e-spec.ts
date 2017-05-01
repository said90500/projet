import { AppTdLpaPage } from './app.po';

describe('app-td-lpa App', () => {
  let page: AppTdLpaPage;

  beforeEach(() => {
    page = new AppTdLpaPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
