import 'activity_model.dart';

class Destination {
  String? imageUrl;
  String? city;
  String? country;
  String? description;
  List<Activity>? activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/06/26/17/33/venice-2444521__340.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/30/05/43/asia-1782429__340.jpg',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/21/01/building-500295__340.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/02/26/14/22/venice-3183168__340.jpg',
    city: 'Venice',
    country: 'Italy',
    description: 'Visit Venice for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/25/09/26/eiffel-tower-3349075__340.jpg',
    city: 'Paris',
    country: 'France',
    description: 'Visit Paris for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl:
        'https://cdn.pixabay.com/photo/2020/11/30/07/16/temple-5790082__340.jpg',
    city: 'Kathmandu',
    country: 'India',
    description: 'Visit  Nepal for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl:
        'https://cdn.pixabay.com/photo/2019/01/28/15/45/city-3960714__340.jpg',
    city: 'Sao Paulo',
    country: 'Brazil',
    description: 'Visit Sao Paulo for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/08/03/20/39/sunset-2578297__340.jpg',
    city: 'New York City',
    country: 'United States',
    description: 'Visit New York for an amazing and unforgettable adventure.',
    activities: activities,
  ),
];
