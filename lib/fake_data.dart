import 'package:flutter/material.dart';
import 'package:food_app/models/food.dart';
import './models/category.dart';

const FAKE_CATEGORYS = [
  Category(id: 1, content: 'Japanese\'s food', color: Colors.deepOrange),
  Category(id: 2, content: 'Pizza', color: Colors.teal),
  Category(id: 3, content: 'Humburgers', color: Colors.pink),
  Category(id: 4, content: 'Milk', color: Colors.amber),
];

var FAKE_FOODS = [
  Food(
      name: 'Sushi Gan Cá Monkfish',
      urlName:
          'https://img-global.cpcdn.com/recipes/b6b098bea99b6dfa/1360x964cq70/sushi-gan-ca-monkfish-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: [
        '2 Lá rong biển Nori',
        '2 cup gạo Nhật',
        '1/2 cup Dấm sushi',
        '1 mc dầu ăn',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)',
        '2 Lá rong biển Nori',
        '2 cup gạo Nhật',
        '1/2 cup Dấm sushi',
        '1 mc dầu ăn',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 1),
  Food(
      name: 'Bánh dẻo hoa đào',
      urlName:
          'https://img-global.cpcdn.com/recipes/bf598abbedf415aa/1360x964cq70/banh-d%E1%BA%BBo-hoa-dao-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Hard,
      ingredients: [
        '35 gr Bột bánh dẻo Xuân Đỉnh',
        '2 g Bột trà xanh (nếu làm bánh trà xanh)',
        '100 gr đường trắng',
        '10 ml Nước cốt thanh long đỏ',
        '100 gr nước'
      ],
      categoryId: 2),
  Food(
      name: 'Bánh Quy Bơ Cho Bé',
      urlName:
          'https://img-global.cpcdn.com/recipes/18c474af29ec8102/1360x964cq70/banh-quy-b%C6%A1-cho-be-recipe-main-photo.webp',
      duration: const Duration(minutes: 50),
      complexity: Complexity.Medium,
      ingredients: [
        '90 gr bột mì đa dụng',
        '10 gr bột bắp (giúp bánh giòn hơn, không có thay bằng bột mì)',
        '50 gr bơ lạt nhiệt độ phòng',
        '1 mc dầu ăn',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 1),
  Food(
      name: 'Thịt má heo rim củ cải muối',
      urlName:
          'https://img-global.cpcdn.com/recipes/e889dcc122ff9a07/1360x964cq70/th%E1%BB%8Bt-ma-heo-rim-c%E1%BB%A7-c%E1%BA%A3i-mu%E1%BB%91i-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: [
        '500 g thịt má heo',
        '300 g củ cải muối',
        '1 thìa canh mật mía (hoặc đường, nước hàng)',
        'hành củ',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 3),
  Food(
      name: 'Mâm cơm gia đình #8: món chay',
      urlName:
          'https://img-global.cpcdn.com/recipes/64c4e2a6c842b799/1360x964cq70/mam-c%C6%A1m-gia-dinh-8-mon-chay-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Simple,
      ingredients: [
        'Chả đậu gà',
        'Đậu non hấp xì dầu',
        'Canh rau, củ, nấm',
        '1 mc dầu ăn',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 1),
  Food(
      name: 'Nước chanh',
      urlName:
          'https://img-global.cpcdn.com/recipes/b6b098bea99b6dfa/1360x964cq70/sushi-gan-ca-monkfish-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: [
        '2 Lá rong biển Nori',
        '2 cup gạo Nhật',
        '1/2 cup Dấm sushi',
        '1 mc dầu ăn',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 2),
  Food(
      name: 'kẹo dẻo ',
      urlName:
          'https://img-global.cpcdn.com/recipes/b6b098bea99b6dfa/1360x964cq70/sushi-gan-ca-monkfish-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: [
        '2 Lá rong biển Nori',
        '2 cup gạo Nhật',
        '1/2 cup Dấm sushi',
        '1 mc dầu ăn',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 4),
  Food(
      name: 'Gà chiên',
      urlName:
          'https://img-global.cpcdn.com/recipes/b6b098bea99b6dfa/1360x964cq70/sushi-gan-ca-monkfish-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: [
        '2 Lá rong biển Nori',
        '2 cup gạo Nhật',
        '1/2 cup Dấm sushi',
        '1 mc dầu ăn',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 1),
  Food(
      name: 'Bánh ú',
      urlName:
          'https://img-global.cpcdn.com/recipes/b6b098bea99b6dfa/1360x964cq70/sushi-gan-ca-monkfish-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: [
        '2 Lá rong biển Nori',
        '2 cup gạo Nhật',
        '1/2 cup Dấm sushi',
        '1 mc dầu ăn',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 2),
  Food(
      name: 'Bánh hấp',
      urlName:
          'https://img-global.cpcdn.com/recipes/b6b098bea99b6dfa/1360x964cq70/sushi-gan-ca-monkfish-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Simple,
      ingredients: [
        '2 Lá rong biển Nori',
        '2 cup gạo Nhật',
        '1/2 cup Dấm sushi',
        '1 mc dầu ăn',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 3),
  Food(
      name: 'Sushi Gan Cá Monkfish',
      urlName:
          'https://img-global.cpcdn.com/recipes/b6b098bea99b6dfa/1360x964cq70/sushi-gan-ca-monkfish-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: [
        '2 Lá rong biển Nori',
        '2 cup gạo Nhật',
        '1/2 cup Dấm sushi',
        '1 mc dầu ăn',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 1),
  Food(
      name: 'Bánh dẻo hoa đào',
      urlName:
          'https://img-global.cpcdn.com/recipes/bf598abbedf415aa/1360x964cq70/banh-d%E1%BA%BBo-hoa-dao-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Hard,
      ingredients: [
        '35 gr Bột bánh dẻo Xuân Đỉnh',
        '2 g Bột trà xanh (nếu làm bánh trà xanh)',
        '100 gr đường trắng',
        '10 ml Nước cốt thanh long đỏ',
        '100 gr nước'
      ],
      categoryId: 2),
  Food(
      name: 'Bánh Quy Bơ Cho Bé',
      urlName:
          'https://img-global.cpcdn.com/recipes/18c474af29ec8102/1360x964cq70/banh-quy-b%C6%A1-cho-be-recipe-main-photo.webp',
      duration: const Duration(minutes: 50),
      complexity: Complexity.Medium,
      ingredients: [
        '90 gr bột mì đa dụng',
        '10 gr bột bắp (giúp bánh giòn hơn, không có thay bằng bột mì)',
        '50 gr bơ lạt nhiệt độ phòng',
        '1 mc dầu ăn',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 1),
  Food(
      name: 'Thịt má heo rim củ cải muối',
      urlName:
          'https://img-global.cpcdn.com/recipes/e889dcc122ff9a07/1360x964cq70/th%E1%BB%8Bt-ma-heo-rim-c%E1%BB%A7-c%E1%BA%A3i-mu%E1%BB%91i-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: [
        '500 g thịt má heo',
        '300 g củ cải muối',
        '1 thìa canh mật mía (hoặc đường, nước hàng)',
        'hành củ',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 3),
  Food(
      name: 'Mâm cơm gia đình #8: món chay',
      urlName:
          'https://img-global.cpcdn.com/recipes/64c4e2a6c842b799/1360x964cq70/mam-c%C6%A1m-gia-dinh-8-mon-chay-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Simple,
      ingredients: [
        'Chả đậu gà',
        'Đậu non hấp xì dầu',
        'Canh rau, củ, nấm',
        '1 mc dầu ăn',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 1),
  Food(
      name: 'Nước chanh',
      urlName:
          'https://img-global.cpcdn.com/recipes/b6b098bea99b6dfa/1360x964cq70/sushi-gan-ca-monkfish-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: [
        '2 Lá rong biển Nori',
        '2 cup gạo Nhật',
        '1/2 cup Dấm sushi',
        '1 mc dầu ăn',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 2),
  Food(
      name: 'kẹo dẻo ',
      urlName:
          'https://img-global.cpcdn.com/recipes/b6b098bea99b6dfa/1360x964cq70/sushi-gan-ca-monkfish-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: [
        '2 Lá rong biển Nori',
        '2 cup gạo Nhật',
        '1/2 cup Dấm sushi',
        '1 mc dầu ăn',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 4),
  Food(
      name: 'Gà chiên',
      urlName:
          'https://img-global.cpcdn.com/recipes/b6b098bea99b6dfa/1360x964cq70/sushi-gan-ca-monkfish-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: [
        '2 Lá rong biển Nori',
        '2 cup gạo Nhật',
        '1/2 cup Dấm sushi',
        '1 mc dầu ăn',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 1),
  Food(
      name: 'Bánh ú',
      urlName:
          'https://img-global.cpcdn.com/recipes/b6b098bea99b6dfa/1360x964cq70/sushi-gan-ca-monkfish-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: [
        '2 Lá rong biển Nori',
        '2 cup gạo Nhật',
        '1/2 cup Dấm sushi',
        '1 mc dầu ăn',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 2),
  Food(
      name: 'Bánh hấp',
      urlName:
          'https://img-global.cpcdn.com/recipes/b6b098bea99b6dfa/1360x964cq70/sushi-gan-ca-monkfish-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Simple,
      ingredients: [
        '2 Lá rong biển Nori',
        '2 cup gạo Nhật',
        '1/2 cup Dấm sushi',
        '1 mc dầu ăn',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 3),
  Food(
      name: 'Sushi Gan Cá Monkfish',
      urlName:
          'https://img-global.cpcdn.com/recipes/b6b098bea99b6dfa/1360x964cq70/sushi-gan-ca-monkfish-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: [
        '2 Lá rong biển Nori',
        '2 cup gạo Nhật',
        '1/2 cup Dấm sushi',
        '1 mc dầu ăn',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 1),
  Food(
      name: 'Bánh dẻo hoa đào',
      urlName:
          'https://img-global.cpcdn.com/recipes/bf598abbedf415aa/1360x964cq70/banh-d%E1%BA%BBo-hoa-dao-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Hard,
      ingredients: [
        '35 gr Bột bánh dẻo Xuân Đỉnh',
        '2 g Bột trà xanh (nếu làm bánh trà xanh)',
        '100 gr đường trắng',
        '10 ml Nước cốt thanh long đỏ',
        '100 gr nước'
      ],
      categoryId: 2),
  Food(
      name: 'Bánh Quy Bơ Cho Bé',
      urlName:
          'https://img-global.cpcdn.com/recipes/18c474af29ec8102/1360x964cq70/banh-quy-b%C6%A1-cho-be-recipe-main-photo.webp',
      duration: const Duration(minutes: 50),
      complexity: Complexity.Medium,
      ingredients: [
        '90 gr bột mì đa dụng',
        '10 gr bột bắp (giúp bánh giòn hơn, không có thay bằng bột mì)',
        '50 gr bơ lạt nhiệt độ phòng',
        '1 mc dầu ăn',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 1),
  Food(
      name: 'Thịt má heo rim củ cải muối',
      urlName:
          'https://img-global.cpcdn.com/recipes/e889dcc122ff9a07/1360x964cq70/th%E1%BB%8Bt-ma-heo-rim-c%E1%BB%A7-c%E1%BA%A3i-mu%E1%BB%91i-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: [
        '500 g thịt má heo',
        '300 g củ cải muối',
        '1 thìa canh mật mía (hoặc đường, nước hàng)',
        'hành củ',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 3),
  Food(
      name: 'Mâm cơm gia đình #8: món chay',
      urlName:
          'https://img-global.cpcdn.com/recipes/64c4e2a6c842b799/1360x964cq70/mam-c%C6%A1m-gia-dinh-8-mon-chay-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Simple,
      ingredients: [
        'Chả đậu gà',
        'Đậu non hấp xì dầu',
        'Canh rau, củ, nấm',
        '1 mc dầu ăn',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 1),
  Food(
      name: 'Nước chanh',
      urlName:
          'https://img-global.cpcdn.com/recipes/b6b098bea99b6dfa/1360x964cq70/sushi-gan-ca-monkfish-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: [
        '2 Lá rong biển Nori',
        '2 cup gạo Nhật',
        '1/2 cup Dấm sushi',
        '1 mc dầu ăn',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 2),
  Food(
      name: 'kẹo dẻo ',
      urlName:
          'https://img-global.cpcdn.com/recipes/b6b098bea99b6dfa/1360x964cq70/sushi-gan-ca-monkfish-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: [
        '2 Lá rong biển Nori',
        '2 cup gạo Nhật',
        '1/2 cup Dấm sushi',
        '1 mc dầu ăn',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 4),
  Food(
      name: 'Gà chiên',
      urlName:
          'https://img-global.cpcdn.com/recipes/b6b098bea99b6dfa/1360x964cq70/sushi-gan-ca-monkfish-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: [
        '2 Lá rong biển Nori',
        '2 cup gạo Nhật',
        '1/2 cup Dấm sushi',
        '1 mc dầu ăn',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 1),
  Food(
      name: 'Bánh ú',
      urlName:
          'https://img-global.cpcdn.com/recipes/b6b098bea99b6dfa/1360x964cq70/sushi-gan-ca-monkfish-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Medium,
      ingredients: [
        '2 Lá rong biển Nori',
        '2 cup gạo Nhật',
        '1/2 cup Dấm sushi',
        '1 mc dầu ăn',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 2),
  Food(
      name: 'Bánh hấp',
      urlName:
          'https://img-global.cpcdn.com/recipes/b6b098bea99b6dfa/1360x964cq70/sushi-gan-ca-monkfish-recipe-main-photo.webp',
      duration: const Duration(minutes: 25),
      complexity: Complexity.Simple,
      ingredients: [
        '2 Lá rong biển Nori',
        '2 cup gạo Nhật',
        '1/2 cup Dấm sushi',
        '1 mc dầu ăn',
        '200 gr Gan cá mặt quỷ (cá thầy tu - Monkfish)'
      ],
      categoryId: 3),
];
