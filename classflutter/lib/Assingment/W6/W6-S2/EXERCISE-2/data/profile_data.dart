import 'package:classflutter/Assingment/W6/W6-S2/EXERCISE-2/model/profile_tile_model.dart';
import 'package:flutter/material.dart';
 
ProfileData ronanProfile = ProfileData(
    name: "Ronan",
    position: "Flutter Developer",
    avatarUrl: 'assets/W6/W6-S2/ronan.jpg',
    tiles: [
      TileData( icon: Icons.phone, title: "Phone Number", value: "+123 456 7890"),
      TileData(icon: Icons.location_on, title: "Address", value: "123 Cambodia"),
      TileData(icon: Icons.location_city, title: 'HomeTown', value: 'France'),
      TileData(icon: Icons.email, title: "Mail", value: "ronan.ogogr@cadt.edu.kh"),
      TileData(icon: Icons.school, title: 'School', value: 'CADT'),
      TileData(icon: Icons.male, title: 'Gender', value: 'Male'),
      
    ]);

ProfileData chandaProfile = ProfileData(
    name: "Chanda",
    position: "Flutter Developer",
    avatarUrl: 'assets/W6/W6-S2/chanda.jpg',
    tiles: [
      TileData( icon: Icons.phone, title: "Phone Number", value: "+855 964109534"),
      TileData(icon: Icons.location_on, title: "Address", value: "Phnom Penh Cambodia"),
      TileData(icon: Icons.location_city, title: 'HomeTown', value: 'Siem Reap Cambodia'),
      TileData(icon: Icons.email, title: "Mail", value: "chanda.sok@student.cadt.edu.kh"),
      TileData(icon: Icons.favorite, title: 'School', value: 'CADT'),
      TileData(icon: Icons.school, title: 'Gender', value: 'Male'),
      TileData(icon: Icons.add_reaction_outlined, title: 'reaction on Flutter ', value: ';-)'),
      
    ]);
