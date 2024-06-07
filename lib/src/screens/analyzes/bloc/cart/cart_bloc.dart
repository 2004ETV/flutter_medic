import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_medic/src/database/cart/cart_entity.dart';
import 'package:flutter_medic/src/repositories/local_database/data/local_database_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc({
    required LocalDatabaseRepository localDatabaseRepository,
  })  : _localDatabaseRepository = localDatabaseRepository,
        super(const CartState.initial()) {
    on<CartEvent>((events, emit) async {
      await events.map(
        load: (event) => _loadItems(event, emit),
        add: (event) => _add(event, emit),
        delete: (event) => _delete(event, emit),
        deleteAll: (event) => _deleteAll(event, emit),
        deleteByIndex: (event) => _deleteByIndex(event, emit),
        incrementPatient: (event) => _incrementPatient(event, emit),
        decrementPatient: (event) => _decrementPatient(event, emit),
      );
    });
  }

  Future<void> _loadItems(
    _Load event,
    Emitter<CartState> emit,
  ) async {
    emit(
      CartState.loaded(
        items: _localDatabaseRepository.loadItems(),
      ),
    );
  }

  Future<void> _add(
    _Add event,
    Emitter<CartState> emit,
  ) async {
    await _localDatabaseRepository.addItem(entity: event.entity);

    emit(CartState.loaded(items: _localDatabaseRepository.loadItems()));
  }

  Future<void> _delete(
    _Delete event,
    Emitter<CartState> emit,
  ) async {
    await _localDatabaseRepository.deleteItem(index: event.index);

    emit(CartState.loaded(items: _localDatabaseRepository.loadItems()));
  }

  Future<void> _deleteAll(
    _DeleteAll event,
    Emitter<CartState> emit,
  ) async {
    await _localDatabaseRepository.deleteAll();

    emit(CartState.loaded(items: _localDatabaseRepository.loadItems()));
  }

  Future<void> _deleteByIndex(
    _DeleteByIndex event,
    Emitter<CartState> emit,
  ) async {
    await _localDatabaseRepository.deleteByIndex(
      index: event.index,
    );

    emit(CartState.loaded(items: _localDatabaseRepository.loadItems()));}

  Future<void> _incrementPatient(
    _IncrementPatient event,
    Emitter<CartState> emit,
  ) async {
    await _localDatabaseRepository.incrementPatient(
      index: event.index,
      entity: event.entity,
    );

    emit(CartState.loaded(items: _localDatabaseRepository.loadItems()));
  }

  Future<void> _decrementPatient(
    _DecrementPatient event,
    Emitter<CartState> emit,
  ) async {
    await _localDatabaseRepository.decrementPatient(
      index: event.index,
      entity: event.entity,
    );

    emit(CartState.loaded(items: _localDatabaseRepository.loadItems()));}

  final LocalDatabaseRepository _localDatabaseRepository;
}
