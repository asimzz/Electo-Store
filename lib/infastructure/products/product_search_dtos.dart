// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'product_search_dtos.freezed.dart';
// part 'product_search_dtos.g.dart';

// @freezed
// abstract class ProductSearchDTO implements _$ProductSearchDTO {
//   const ProductSearchDTO._();

//   const factory ProductSearchDTO({
//     @required String keyword,
//   }) = _ProductSearchDTO;

//   factory ProductSearchDTO.fromDomain(ProductSearch ProductSearch) {
//     return ProductSearchDTO(
//       id: ProductSearch.id.getOrCrash(),
//       body: ProductSearch.body.getOrCrash(),
//       color: ProductSearch.color.getOrCrash().value,
//       todos: ProductSearch.todos
//           .getOrCrash()
//           .map(
//             (todoItem) => TodoItemDTO.fromDomain(todoItem),
//           )
//           .asList(),
//       serverTimeStamp: FieldValue.serverTimestamp(),
//     );
//   }

//   Note toDomain() {
//     return Note(
//       id: UniqueId.fromUniqueString(id),
//       body: NoteBody(body),
//       color: NoteColor(Color(color)),
//       todos: ListThree(todos.map((dto) => dto.toDomain()).toImmutableList()),
//     );
//   }

//   factory NoteDTO.fromJson(Map<String, dynamic> json) =>
//       _$NoteDTOFromJson(json);

//   factory NoteDTO.fromFirestore(DocumentSnapshot documentSnapshot) =>
//       NoteDTO.fromJson(documentSnapshot.data)
//           .copyWith(id: documentSnapshot.documentID);
// }

// class ServerTimeStampConverter implements JsonConverter<FieldValue, Object> {
//   const ServerTimeStampConverter();

//   @override
//   FieldValue fromJson(Object json) {
//     return FieldValue.serverTimestamp();
//   }

//   @override
//   Object toJson(FieldValue fieldValue) => fieldValue;
// }

// @freezed
// abstract class TodoItemDTO implements _$TodoItemDTO {
//   const TodoItemDTO._();

//   const factory TodoItemDTO({
//     @required String id,
//     @required String name,
//     @required bool done,
//   }) = _TodoItemDTO;

//   factory TodoItemDTO.fromDomain(TodoItem todoItem) {
//     return TodoItemDTO(
//       id: todoItem.id.getOrCrash(),
//       name: todoItem.name.getOrCrash(),
//       done: todoItem.done,
//     );
//   }

//   TodoItem toDomain() {
//     return TodoItem(
//       id: UniqueId.fromUniqueString(id),
//       name: TodoName(name),
//       done: done,
//     );
//   }

//   factory TodoItemDTO.fromJson(Map<String, dynamic> json) =>
//       _$TodoItemDTOFromJson(json);
// }
