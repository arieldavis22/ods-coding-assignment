import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css'],
})
export class HeaderComponent implements OnInit {
  logo =
    'https://i.pinimg.com/originals/75/b4/69/75b469395dcf237d3a2a5482100e8117.png';

  constructor() {}

  ngOnInit(): void {}
}
