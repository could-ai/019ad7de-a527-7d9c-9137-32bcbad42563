import 'package:flutter/material.dart';

// --- Models ---

class NewsArticle {
  final String id;
  final String title;
  final String summary;
  final String category; // Business, Law, Consulting
  final String imageUrl;
  final DateTime date;

  NewsArticle({
    required this.id,
    required this.title,
    required this.summary,
    required this.category,
    required this.imageUrl,
    required this.date,
  });
}

class Consultant {
  final String id;
  final String name;
  final String specialty;
  final double rating;
  final double hourlyRate;
  final String imageUrl;
  final String bio;

  Consultant({
    required this.id,
    required this.name,
    required this.specialty,
    required this.rating,
    required this.hourlyRate,
    required this.imageUrl,
    required this.bio,
  });
}

class ChatMessage {
  final String id;
  final String text;
  final bool isUser;
  final DateTime timestamp;

  ChatMessage({
    required this.id,
    required this.text,
    required this.isUser,
    required this.timestamp,
  });
}

// --- Mock Data ---

final List<NewsArticle> mockNews = [
  NewsArticle(
    id: '1',
    title: 'Global Consulting Trends 2024',
    summary: 'The consulting industry is shifting towards AI-driven solutions and remote advisory services. Major firms are investing heavily in generative AI tools.',
    category: 'Consulting',
    imageUrl: 'https://images.unsplash.com/photo-1552664730-d307ca884978?auto=format&fit=crop&q=80&w=300',
    date: DateTime.now().subtract(const Duration(hours: 2)),
  ),
  NewsArticle(
    id: '2',
    title: 'New Corporate Tax Laws Explained',
    summary: 'Recent changes in international tax regulations may affect cross-border businesses. Here is what you need to know about the new compliance requirements.',
    category: 'Law',
    imageUrl: 'https://images.unsplash.com/photo-1589829085413-56de8ae18c73?auto=format&fit=crop&q=80&w=300',
    date: DateTime.now().subtract(const Duration(days: 1)),
  ),
  NewsArticle(
    id: '3',
    title: 'Startups to Watch in Q3',
    summary: 'A look at the most promising startups emerging in the fintech and healthtech sectors this quarter.',
    category: 'Business',
    imageUrl: 'https://images.unsplash.com/photo-1519389950473-47ba0277781c?auto=format&fit=crop&q=80&w=300',
    date: DateTime.now().subtract(const Duration(days: 2)),
  ),
];

final List<Consultant> mockConsultants = [
  Consultant(
    id: 'c1',
    name: 'Dr. Sarah Miller',
    specialty: 'Corporate Law',
    rating: 4.9,
    hourlyRate: 150.0,
    imageUrl: 'https://randomuser.me/api/portraits/women/44.jpg',
    bio: 'Expert in corporate law with over 15 years of experience advising Fortune 500 companies.',
  ),
  Consultant(
    id: 'c2',
    name: 'James Carter',
    specialty: 'Business Strategy',
    rating: 4.7,
    hourlyRate: 120.0,
    imageUrl: 'https://randomuser.me/api/portraits/men/32.jpg',
    bio: 'Helping startups scale and optimize their operations for maximum efficiency.',
  ),
  Consultant(
    id: 'c3',
    name: 'Emily Chen',
    specialty: 'Financial Advisory',
    rating: 4.8,
    hourlyRate: 135.0,
    imageUrl: 'https://randomuser.me/api/portraits/women/68.jpg',
    bio: 'Certified Financial Planner specializing in wealth management and investment strategies.',
  ),
  Consultant(
    id: 'c4',
    name: 'Michael Ross',
    specialty: 'Tech Consulting',
    rating: 4.6,
    hourlyRate: 110.0,
    imageUrl: 'https://randomuser.me/api/portraits/men/85.jpg',
    bio: 'Bridging the gap between business requirements and technical implementation.',
  ),
];
