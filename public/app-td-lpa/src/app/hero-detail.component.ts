import { Component, Input } from '@angular/core';
import { Hero } from './hero';


@Component({
  selector: 'hero-detail',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})

export class HeroDetailComponent {
  @Input() hero: Hero;
}