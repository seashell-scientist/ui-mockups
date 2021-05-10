/*
import 'package:cloud_firestore/cloud_firestore.dart';
import './Category.dart';

class Book {
  final String id;
  final String title;
  final String description;
  final List<String> authors;
  final List<String> illustrators;
  final List<String> narrators;
  final List<String> curators;
  final String ageRange;
  final String gradeLevel;
  final String pdfUrl;
  final String coverImageUrl;
  final String jsonUrl;
  final String categoryIdentifier;
  final List<String> tags;
  final bool isFree;

  Book({
    this.id,
    this.title,
    this.description,
    this.authors,
    this.illustrators,
    this.narrators,
    this.curators,
    this.ageRange,
    this.gradeLevel,
    this.pdfUrl,
    this.coverImageUrl,
    this.jsonUrl,
    this.categoryIdentifier,
    this.tags,
    this.isFree,
  });

  factory Book.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data(); //!;
    return Book(
      id: doc.id,
      title: data['title'] ?? '',
      description: data['description'] ?? '',
      authors: data['authors']?.cast<String>() ?? [],
      illustrators: data['illustrators']?.cast<String>() ?? [],
      narrators: data['narrators']?.cast<String>() ?? [],
      curators: data['curators']?.cast<String>() ?? [],
      ageRange: data['ageRange'] ?? '',
      gradeLevel: data['gradeLevel'] ?? '',
      pdfUrl: data['pdfUrl'] ?? '',
      coverImageUrl: data['coverImageUrl'] ?? '',
      jsonUrl: data['jsonUrl'] ?? '',
      categoryIdentifier: data['categoryIdentifier'] ?? '',
      tags: data['tags']?.cast<String>() ?? [],
      isFree: data['isFree'] ?? false,
    );
  }

  get summary => null;

  bool isCategory(Category category) {
    return category.identifier == categoryIdentifier;
  }

  @override
  String toString() {
    return "id: $id, title: $title, categoryIdentifier: $categoryIdentifier";
  }
}
*/
//does this bit require update to null safety runs?