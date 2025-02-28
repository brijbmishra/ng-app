import { Component } from '@angular/core';
import { MatSlideToggleModule } from '@angular/material/slide-toggle'

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  standalone: true,
  styleUrl: './app.component.css',
  imports:[
    MatSlideToggleModule
  ]
})
export class AppComponent {
  title = 'app';
}
