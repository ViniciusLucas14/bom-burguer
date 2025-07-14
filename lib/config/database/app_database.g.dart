// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CartTableTable extends CartTable
    with TableInfo<$CartTableTable, CartTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CartTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _isComboMeta =
      const VerificationMeta('isCombo');
  @override
  late final GeneratedColumn<bool> isCombo = GeneratedColumn<bool>(
      'is_combo', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_combo" IN (0, 1))'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imgMeta = const VerificationMeta('img');
  @override
  late final GeneratedColumn<String> img = GeneratedColumn<String>(
      'img', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _totalMeta = const VerificationMeta('total');
  @override
  late final GeneratedColumn<double> total = GeneratedColumn<double>(
      'total', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _subTotalMeta =
      const VerificationMeta('subTotal');
  @override
  late final GeneratedColumn<double> subTotal = GeneratedColumn<double>(
      'sub_total', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _discountMeta =
      const VerificationMeta('discount');
  @override
  late final GeneratedColumn<double> discount = GeneratedColumn<double>(
      'discount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _itemsListMeta =
      const VerificationMeta('itemsList');
  @override
  late final GeneratedColumn<String> itemsList = GeneratedColumn<String>(
      'items_list', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, isCombo, name, img, total, subTotal, discount, itemsList, date];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cart_table';
  @override
  VerificationContext validateIntegrity(Insertable<CartTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('is_combo')) {
      context.handle(_isComboMeta,
          isCombo.isAcceptableOrUnknown(data['is_combo']!, _isComboMeta));
    } else if (isInserting) {
      context.missing(_isComboMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('img')) {
      context.handle(
          _imgMeta, img.isAcceptableOrUnknown(data['img']!, _imgMeta));
    } else if (isInserting) {
      context.missing(_imgMeta);
    }
    if (data.containsKey('total')) {
      context.handle(
          _totalMeta, total.isAcceptableOrUnknown(data['total']!, _totalMeta));
    } else if (isInserting) {
      context.missing(_totalMeta);
    }
    if (data.containsKey('sub_total')) {
      context.handle(_subTotalMeta,
          subTotal.isAcceptableOrUnknown(data['sub_total']!, _subTotalMeta));
    } else if (isInserting) {
      context.missing(_subTotalMeta);
    }
    if (data.containsKey('discount')) {
      context.handle(_discountMeta,
          discount.isAcceptableOrUnknown(data['discount']!, _discountMeta));
    } else if (isInserting) {
      context.missing(_discountMeta);
    }
    if (data.containsKey('items_list')) {
      context.handle(_itemsListMeta,
          itemsList.isAcceptableOrUnknown(data['items_list']!, _itemsListMeta));
    } else if (isInserting) {
      context.missing(_itemsListMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CartTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CartTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      isCombo: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_combo'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      img: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}img'])!,
      total: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total'])!,
      subTotal: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}sub_total'])!,
      discount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}discount'])!,
      itemsList: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}items_list'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
    );
  }

  @override
  $CartTableTable createAlias(String alias) {
    return $CartTableTable(attachedDatabase, alias);
  }
}

class CartTableData extends DataClass implements Insertable<CartTableData> {
  final int id;
  final bool isCombo;
  final String name;
  final String img;
  final double total;
  final double subTotal;
  final double discount;
  final String itemsList;
  final DateTime date;
  const CartTableData(
      {required this.id,
      required this.isCombo,
      required this.name,
      required this.img,
      required this.total,
      required this.subTotal,
      required this.discount,
      required this.itemsList,
      required this.date});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['is_combo'] = Variable<bool>(isCombo);
    map['name'] = Variable<String>(name);
    map['img'] = Variable<String>(img);
    map['total'] = Variable<double>(total);
    map['sub_total'] = Variable<double>(subTotal);
    map['discount'] = Variable<double>(discount);
    map['items_list'] = Variable<String>(itemsList);
    map['date'] = Variable<DateTime>(date);
    return map;
  }

  CartTableCompanion toCompanion(bool nullToAbsent) {
    return CartTableCompanion(
      id: Value(id),
      isCombo: Value(isCombo),
      name: Value(name),
      img: Value(img),
      total: Value(total),
      subTotal: Value(subTotal),
      discount: Value(discount),
      itemsList: Value(itemsList),
      date: Value(date),
    );
  }

  factory CartTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CartTableData(
      id: serializer.fromJson<int>(json['id']),
      isCombo: serializer.fromJson<bool>(json['isCombo']),
      name: serializer.fromJson<String>(json['name']),
      img: serializer.fromJson<String>(json['img']),
      total: serializer.fromJson<double>(json['total']),
      subTotal: serializer.fromJson<double>(json['subTotal']),
      discount: serializer.fromJson<double>(json['discount']),
      itemsList: serializer.fromJson<String>(json['itemsList']),
      date: serializer.fromJson<DateTime>(json['date']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'isCombo': serializer.toJson<bool>(isCombo),
      'name': serializer.toJson<String>(name),
      'img': serializer.toJson<String>(img),
      'total': serializer.toJson<double>(total),
      'subTotal': serializer.toJson<double>(subTotal),
      'discount': serializer.toJson<double>(discount),
      'itemsList': serializer.toJson<String>(itemsList),
      'date': serializer.toJson<DateTime>(date),
    };
  }

  CartTableData copyWith(
          {int? id,
          bool? isCombo,
          String? name,
          String? img,
          double? total,
          double? subTotal,
          double? discount,
          String? itemsList,
          DateTime? date}) =>
      CartTableData(
        id: id ?? this.id,
        isCombo: isCombo ?? this.isCombo,
        name: name ?? this.name,
        img: img ?? this.img,
        total: total ?? this.total,
        subTotal: subTotal ?? this.subTotal,
        discount: discount ?? this.discount,
        itemsList: itemsList ?? this.itemsList,
        date: date ?? this.date,
      );
  CartTableData copyWithCompanion(CartTableCompanion data) {
    return CartTableData(
      id: data.id.present ? data.id.value : this.id,
      isCombo: data.isCombo.present ? data.isCombo.value : this.isCombo,
      name: data.name.present ? data.name.value : this.name,
      img: data.img.present ? data.img.value : this.img,
      total: data.total.present ? data.total.value : this.total,
      subTotal: data.subTotal.present ? data.subTotal.value : this.subTotal,
      discount: data.discount.present ? data.discount.value : this.discount,
      itemsList: data.itemsList.present ? data.itemsList.value : this.itemsList,
      date: data.date.present ? data.date.value : this.date,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CartTableData(')
          ..write('id: $id, ')
          ..write('isCombo: $isCombo, ')
          ..write('name: $name, ')
          ..write('img: $img, ')
          ..write('total: $total, ')
          ..write('subTotal: $subTotal, ')
          ..write('discount: $discount, ')
          ..write('itemsList: $itemsList, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, isCombo, name, img, total, subTotal, discount, itemsList, date);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CartTableData &&
          other.id == this.id &&
          other.isCombo == this.isCombo &&
          other.name == this.name &&
          other.img == this.img &&
          other.total == this.total &&
          other.subTotal == this.subTotal &&
          other.discount == this.discount &&
          other.itemsList == this.itemsList &&
          other.date == this.date);
}

class CartTableCompanion extends UpdateCompanion<CartTableData> {
  final Value<int> id;
  final Value<bool> isCombo;
  final Value<String> name;
  final Value<String> img;
  final Value<double> total;
  final Value<double> subTotal;
  final Value<double> discount;
  final Value<String> itemsList;
  final Value<DateTime> date;
  const CartTableCompanion({
    this.id = const Value.absent(),
    this.isCombo = const Value.absent(),
    this.name = const Value.absent(),
    this.img = const Value.absent(),
    this.total = const Value.absent(),
    this.subTotal = const Value.absent(),
    this.discount = const Value.absent(),
    this.itemsList = const Value.absent(),
    this.date = const Value.absent(),
  });
  CartTableCompanion.insert({
    this.id = const Value.absent(),
    required bool isCombo,
    required String name,
    required String img,
    required double total,
    required double subTotal,
    required double discount,
    required String itemsList,
    required DateTime date,
  })  : isCombo = Value(isCombo),
        name = Value(name),
        img = Value(img),
        total = Value(total),
        subTotal = Value(subTotal),
        discount = Value(discount),
        itemsList = Value(itemsList),
        date = Value(date);
  static Insertable<CartTableData> custom({
    Expression<int>? id,
    Expression<bool>? isCombo,
    Expression<String>? name,
    Expression<String>? img,
    Expression<double>? total,
    Expression<double>? subTotal,
    Expression<double>? discount,
    Expression<String>? itemsList,
    Expression<DateTime>? date,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (isCombo != null) 'is_combo': isCombo,
      if (name != null) 'name': name,
      if (img != null) 'img': img,
      if (total != null) 'total': total,
      if (subTotal != null) 'sub_total': subTotal,
      if (discount != null) 'discount': discount,
      if (itemsList != null) 'items_list': itemsList,
      if (date != null) 'date': date,
    });
  }

  CartTableCompanion copyWith(
      {Value<int>? id,
      Value<bool>? isCombo,
      Value<String>? name,
      Value<String>? img,
      Value<double>? total,
      Value<double>? subTotal,
      Value<double>? discount,
      Value<String>? itemsList,
      Value<DateTime>? date}) {
    return CartTableCompanion(
      id: id ?? this.id,
      isCombo: isCombo ?? this.isCombo,
      name: name ?? this.name,
      img: img ?? this.img,
      total: total ?? this.total,
      subTotal: subTotal ?? this.subTotal,
      discount: discount ?? this.discount,
      itemsList: itemsList ?? this.itemsList,
      date: date ?? this.date,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (isCombo.present) {
      map['is_combo'] = Variable<bool>(isCombo.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (img.present) {
      map['img'] = Variable<String>(img.value);
    }
    if (total.present) {
      map['total'] = Variable<double>(total.value);
    }
    if (subTotal.present) {
      map['sub_total'] = Variable<double>(subTotal.value);
    }
    if (discount.present) {
      map['discount'] = Variable<double>(discount.value);
    }
    if (itemsList.present) {
      map['items_list'] = Variable<String>(itemsList.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CartTableCompanion(')
          ..write('id: $id, ')
          ..write('isCombo: $isCombo, ')
          ..write('name: $name, ')
          ..write('img: $img, ')
          ..write('total: $total, ')
          ..write('subTotal: $subTotal, ')
          ..write('discount: $discount, ')
          ..write('itemsList: $itemsList, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }
}

class $TypeItemTableTable extends TypeItemTable
    with TableInfo<$TypeItemTableTable, TypeItemTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TypeItemTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'type_item_table';
  @override
  VerificationContext validateIntegrity(Insertable<TypeItemTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TypeItemTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TypeItemTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $TypeItemTableTable createAlias(String alias) {
    return $TypeItemTableTable(attachedDatabase, alias);
  }
}

class TypeItemTableData extends DataClass
    implements Insertable<TypeItemTableData> {
  final int id;
  final String name;
  const TypeItemTableData({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  TypeItemTableCompanion toCompanion(bool nullToAbsent) {
    return TypeItemTableCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory TypeItemTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TypeItemTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  TypeItemTableData copyWith({int? id, String? name}) => TypeItemTableData(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  TypeItemTableData copyWithCompanion(TypeItemTableCompanion data) {
    return TypeItemTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TypeItemTableData(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TypeItemTableData &&
          other.id == this.id &&
          other.name == this.name);
}

class TypeItemTableCompanion extends UpdateCompanion<TypeItemTableData> {
  final Value<int> id;
  final Value<String> name;
  const TypeItemTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  TypeItemTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<TypeItemTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  TypeItemTableCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return TypeItemTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TypeItemTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $ItemTableTable extends ItemTable
    with TableInfo<$ItemTableTable, ItemTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _imagePathMeta =
      const VerificationMeta('imagePath');
  @override
  late final GeneratedColumn<String> imagePath = GeneratedColumn<String>(
      'image_path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<int> type = GeneratedColumn<int>(
      'type', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES type_item_table (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, name, price, imagePath, type];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'item_table';
  @override
  VerificationContext validateIntegrity(Insertable<ItemTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('image_path')) {
      context.handle(_imagePathMeta,
          imagePath.isAcceptableOrUnknown(data['image_path']!, _imagePathMeta));
    } else if (isInserting) {
      context.missing(_imagePathMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ItemTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price'])!,
      imagePath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_path'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}type'])!,
    );
  }

  @override
  $ItemTableTable createAlias(String alias) {
    return $ItemTableTable(attachedDatabase, alias);
  }
}

class ItemTableData extends DataClass implements Insertable<ItemTableData> {
  final int id;
  final String name;
  final double price;
  final String imagePath;
  final int type;
  const ItemTableData(
      {required this.id,
      required this.name,
      required this.price,
      required this.imagePath,
      required this.type});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['price'] = Variable<double>(price);
    map['image_path'] = Variable<String>(imagePath);
    map['type'] = Variable<int>(type);
    return map;
  }

  ItemTableCompanion toCompanion(bool nullToAbsent) {
    return ItemTableCompanion(
      id: Value(id),
      name: Value(name),
      price: Value(price),
      imagePath: Value(imagePath),
      type: Value(type),
    );
  }

  factory ItemTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ItemTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      price: serializer.fromJson<double>(json['price']),
      imagePath: serializer.fromJson<String>(json['imagePath']),
      type: serializer.fromJson<int>(json['type']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'price': serializer.toJson<double>(price),
      'imagePath': serializer.toJson<String>(imagePath),
      'type': serializer.toJson<int>(type),
    };
  }

  ItemTableData copyWith(
          {int? id,
          String? name,
          double? price,
          String? imagePath,
          int? type}) =>
      ItemTableData(
        id: id ?? this.id,
        name: name ?? this.name,
        price: price ?? this.price,
        imagePath: imagePath ?? this.imagePath,
        type: type ?? this.type,
      );
  ItemTableData copyWithCompanion(ItemTableCompanion data) {
    return ItemTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      price: data.price.present ? data.price.value : this.price,
      imagePath: data.imagePath.present ? data.imagePath.value : this.imagePath,
      type: data.type.present ? data.type.value : this.type,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ItemTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('price: $price, ')
          ..write('imagePath: $imagePath, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, price, imagePath, type);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.price == this.price &&
          other.imagePath == this.imagePath &&
          other.type == this.type);
}

class ItemTableCompanion extends UpdateCompanion<ItemTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<double> price;
  final Value<String> imagePath;
  final Value<int> type;
  const ItemTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.price = const Value.absent(),
    this.imagePath = const Value.absent(),
    this.type = const Value.absent(),
  });
  ItemTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required double price,
    required String imagePath,
    required int type,
  })  : name = Value(name),
        price = Value(price),
        imagePath = Value(imagePath),
        type = Value(type);
  static Insertable<ItemTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<double>? price,
    Expression<String>? imagePath,
    Expression<int>? type,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (price != null) 'price': price,
      if (imagePath != null) 'image_path': imagePath,
      if (type != null) 'type': type,
    });
  }

  ItemTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<double>? price,
      Value<String>? imagePath,
      Value<int>? type}) {
    return ItemTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      imagePath: imagePath ?? this.imagePath,
      type: type ?? this.type,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (imagePath.present) {
      map['image_path'] = Variable<String>(imagePath.value);
    }
    if (type.present) {
      map['type'] = Variable<int>(type.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('price: $price, ')
          ..write('imagePath: $imagePath, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }
}

class $OrderTableTable extends OrderTable
    with TableInfo<$OrderTableTable, OrderTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _totalMeta = const VerificationMeta('total');
  @override
  late final GeneratedColumn<double> total = GeneratedColumn<double>(
      'total', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _subTotalMeta =
      const VerificationMeta('subTotal');
  @override
  late final GeneratedColumn<double> subTotal = GeneratedColumn<double>(
      'sub_total', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _discountMeta =
      const VerificationMeta('discount');
  @override
  late final GeneratedColumn<double> discount = GeneratedColumn<double>(
      'discount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _paymentMethodMeta =
      const VerificationMeta('paymentMethod');
  @override
  late final GeneratedColumn<String> paymentMethod = GeneratedColumn<String>(
      'payment_method', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, total, subTotal, discount, paymentMethod, date];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_table';
  @override
  VerificationContext validateIntegrity(Insertable<OrderTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('total')) {
      context.handle(
          _totalMeta, total.isAcceptableOrUnknown(data['total']!, _totalMeta));
    } else if (isInserting) {
      context.missing(_totalMeta);
    }
    if (data.containsKey('sub_total')) {
      context.handle(_subTotalMeta,
          subTotal.isAcceptableOrUnknown(data['sub_total']!, _subTotalMeta));
    } else if (isInserting) {
      context.missing(_subTotalMeta);
    }
    if (data.containsKey('discount')) {
      context.handle(_discountMeta,
          discount.isAcceptableOrUnknown(data['discount']!, _discountMeta));
    } else if (isInserting) {
      context.missing(_discountMeta);
    }
    if (data.containsKey('payment_method')) {
      context.handle(
          _paymentMethodMeta,
          paymentMethod.isAcceptableOrUnknown(
              data['payment_method']!, _paymentMethodMeta));
    } else if (isInserting) {
      context.missing(_paymentMethodMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  OrderTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      total: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total'])!,
      subTotal: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}sub_total'])!,
      discount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}discount'])!,
      paymentMethod: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}payment_method'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
    );
  }

  @override
  $OrderTableTable createAlias(String alias) {
    return $OrderTableTable(attachedDatabase, alias);
  }
}

class OrderTableData extends DataClass implements Insertable<OrderTableData> {
  final int id;
  final double total;
  final double subTotal;
  final double discount;
  final String paymentMethod;
  final DateTime date;
  const OrderTableData(
      {required this.id,
      required this.total,
      required this.subTotal,
      required this.discount,
      required this.paymentMethod,
      required this.date});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['total'] = Variable<double>(total);
    map['sub_total'] = Variable<double>(subTotal);
    map['discount'] = Variable<double>(discount);
    map['payment_method'] = Variable<String>(paymentMethod);
    map['date'] = Variable<DateTime>(date);
    return map;
  }

  OrderTableCompanion toCompanion(bool nullToAbsent) {
    return OrderTableCompanion(
      id: Value(id),
      total: Value(total),
      subTotal: Value(subTotal),
      discount: Value(discount),
      paymentMethod: Value(paymentMethod),
      date: Value(date),
    );
  }

  factory OrderTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderTableData(
      id: serializer.fromJson<int>(json['id']),
      total: serializer.fromJson<double>(json['total']),
      subTotal: serializer.fromJson<double>(json['subTotal']),
      discount: serializer.fromJson<double>(json['discount']),
      paymentMethod: serializer.fromJson<String>(json['paymentMethod']),
      date: serializer.fromJson<DateTime>(json['date']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'total': serializer.toJson<double>(total),
      'subTotal': serializer.toJson<double>(subTotal),
      'discount': serializer.toJson<double>(discount),
      'paymentMethod': serializer.toJson<String>(paymentMethod),
      'date': serializer.toJson<DateTime>(date),
    };
  }

  OrderTableData copyWith(
          {int? id,
          double? total,
          double? subTotal,
          double? discount,
          String? paymentMethod,
          DateTime? date}) =>
      OrderTableData(
        id: id ?? this.id,
        total: total ?? this.total,
        subTotal: subTotal ?? this.subTotal,
        discount: discount ?? this.discount,
        paymentMethod: paymentMethod ?? this.paymentMethod,
        date: date ?? this.date,
      );
  OrderTableData copyWithCompanion(OrderTableCompanion data) {
    return OrderTableData(
      id: data.id.present ? data.id.value : this.id,
      total: data.total.present ? data.total.value : this.total,
      subTotal: data.subTotal.present ? data.subTotal.value : this.subTotal,
      discount: data.discount.present ? data.discount.value : this.discount,
      paymentMethod: data.paymentMethod.present
          ? data.paymentMethod.value
          : this.paymentMethod,
      date: data.date.present ? data.date.value : this.date,
    );
  }

  @override
  String toString() {
    return (StringBuffer('OrderTableData(')
          ..write('id: $id, ')
          ..write('total: $total, ')
          ..write('subTotal: $subTotal, ')
          ..write('discount: $discount, ')
          ..write('paymentMethod: $paymentMethod, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, total, subTotal, discount, paymentMethod, date);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderTableData &&
          other.id == this.id &&
          other.total == this.total &&
          other.subTotal == this.subTotal &&
          other.discount == this.discount &&
          other.paymentMethod == this.paymentMethod &&
          other.date == this.date);
}

class OrderTableCompanion extends UpdateCompanion<OrderTableData> {
  final Value<int> id;
  final Value<double> total;
  final Value<double> subTotal;
  final Value<double> discount;
  final Value<String> paymentMethod;
  final Value<DateTime> date;
  const OrderTableCompanion({
    this.id = const Value.absent(),
    this.total = const Value.absent(),
    this.subTotal = const Value.absent(),
    this.discount = const Value.absent(),
    this.paymentMethod = const Value.absent(),
    this.date = const Value.absent(),
  });
  OrderTableCompanion.insert({
    this.id = const Value.absent(),
    required double total,
    required double subTotal,
    required double discount,
    required String paymentMethod,
    required DateTime date,
  })  : total = Value(total),
        subTotal = Value(subTotal),
        discount = Value(discount),
        paymentMethod = Value(paymentMethod),
        date = Value(date);
  static Insertable<OrderTableData> custom({
    Expression<int>? id,
    Expression<double>? total,
    Expression<double>? subTotal,
    Expression<double>? discount,
    Expression<String>? paymentMethod,
    Expression<DateTime>? date,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (total != null) 'total': total,
      if (subTotal != null) 'sub_total': subTotal,
      if (discount != null) 'discount': discount,
      if (paymentMethod != null) 'payment_method': paymentMethod,
      if (date != null) 'date': date,
    });
  }

  OrderTableCompanion copyWith(
      {Value<int>? id,
      Value<double>? total,
      Value<double>? subTotal,
      Value<double>? discount,
      Value<String>? paymentMethod,
      Value<DateTime>? date}) {
    return OrderTableCompanion(
      id: id ?? this.id,
      total: total ?? this.total,
      subTotal: subTotal ?? this.subTotal,
      discount: discount ?? this.discount,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      date: date ?? this.date,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (total.present) {
      map['total'] = Variable<double>(total.value);
    }
    if (subTotal.present) {
      map['sub_total'] = Variable<double>(subTotal.value);
    }
    if (discount.present) {
      map['discount'] = Variable<double>(discount.value);
    }
    if (paymentMethod.present) {
      map['payment_method'] = Variable<String>(paymentMethod.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderTableCompanion(')
          ..write('id: $id, ')
          ..write('total: $total, ')
          ..write('subTotal: $subTotal, ')
          ..write('discount: $discount, ')
          ..write('paymentMethod: $paymentMethod, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }
}

class $OrderItemTableTable extends OrderItemTable
    with TableInfo<$OrderItemTableTable, OrderItemTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderItemTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _quantityMeta =
      const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
      'quantity', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
      'item_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES item_table (id)'));
  static const VerificationMeta _orderIdMeta =
      const VerificationMeta('orderId');
  @override
  late final GeneratedColumn<int> orderId = GeneratedColumn<int>(
      'order_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES order_table (id)'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, quantity, price, itemId, orderId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_item_table';
  @override
  VerificationContext validateIntegrity(Insertable<OrderItemTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('order_id')) {
      context.handle(_orderIdMeta,
          orderId.isAcceptableOrUnknown(data['order_id']!, _orderIdMeta));
    } else if (isInserting) {
      context.missing(_orderIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  OrderItemTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderItemTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      quantity: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}quantity'])!,
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price'])!,
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_id'])!,
      orderId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_id'])!,
    );
  }

  @override
  $OrderItemTableTable createAlias(String alias) {
    return $OrderItemTableTable(attachedDatabase, alias);
  }
}

class OrderItemTableData extends DataClass
    implements Insertable<OrderItemTableData> {
  final int id;
  final String name;
  final int quantity;
  final double price;
  final int itemId;
  final int orderId;
  const OrderItemTableData(
      {required this.id,
      required this.name,
      required this.quantity,
      required this.price,
      required this.itemId,
      required this.orderId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['quantity'] = Variable<int>(quantity);
    map['price'] = Variable<double>(price);
    map['item_id'] = Variable<int>(itemId);
    map['order_id'] = Variable<int>(orderId);
    return map;
  }

  OrderItemTableCompanion toCompanion(bool nullToAbsent) {
    return OrderItemTableCompanion(
      id: Value(id),
      name: Value(name),
      quantity: Value(quantity),
      price: Value(price),
      itemId: Value(itemId),
      orderId: Value(orderId),
    );
  }

  factory OrderItemTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderItemTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      quantity: serializer.fromJson<int>(json['quantity']),
      price: serializer.fromJson<double>(json['price']),
      itemId: serializer.fromJson<int>(json['itemId']),
      orderId: serializer.fromJson<int>(json['orderId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'quantity': serializer.toJson<int>(quantity),
      'price': serializer.toJson<double>(price),
      'itemId': serializer.toJson<int>(itemId),
      'orderId': serializer.toJson<int>(orderId),
    };
  }

  OrderItemTableData copyWith(
          {int? id,
          String? name,
          int? quantity,
          double? price,
          int? itemId,
          int? orderId}) =>
      OrderItemTableData(
        id: id ?? this.id,
        name: name ?? this.name,
        quantity: quantity ?? this.quantity,
        price: price ?? this.price,
        itemId: itemId ?? this.itemId,
        orderId: orderId ?? this.orderId,
      );
  OrderItemTableData copyWithCompanion(OrderItemTableCompanion data) {
    return OrderItemTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      price: data.price.present ? data.price.value : this.price,
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      orderId: data.orderId.present ? data.orderId.value : this.orderId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('OrderItemTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('quantity: $quantity, ')
          ..write('price: $price, ')
          ..write('itemId: $itemId, ')
          ..write('orderId: $orderId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, quantity, price, itemId, orderId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderItemTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.quantity == this.quantity &&
          other.price == this.price &&
          other.itemId == this.itemId &&
          other.orderId == this.orderId);
}

class OrderItemTableCompanion extends UpdateCompanion<OrderItemTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> quantity;
  final Value<double> price;
  final Value<int> itemId;
  final Value<int> orderId;
  const OrderItemTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.quantity = const Value.absent(),
    this.price = const Value.absent(),
    this.itemId = const Value.absent(),
    this.orderId = const Value.absent(),
  });
  OrderItemTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required int quantity,
    required double price,
    required int itemId,
    required int orderId,
  })  : name = Value(name),
        quantity = Value(quantity),
        price = Value(price),
        itemId = Value(itemId),
        orderId = Value(orderId);
  static Insertable<OrderItemTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? quantity,
    Expression<double>? price,
    Expression<int>? itemId,
    Expression<int>? orderId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (quantity != null) 'quantity': quantity,
      if (price != null) 'price': price,
      if (itemId != null) 'item_id': itemId,
      if (orderId != null) 'order_id': orderId,
    });
  }

  OrderItemTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<int>? quantity,
      Value<double>? price,
      Value<int>? itemId,
      Value<int>? orderId}) {
    return OrderItemTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
      itemId: itemId ?? this.itemId,
      orderId: orderId ?? this.orderId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (orderId.present) {
      map['order_id'] = Variable<int>(orderId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderItemTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('quantity: $quantity, ')
          ..write('price: $price, ')
          ..write('itemId: $itemId, ')
          ..write('orderId: $orderId')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CartTableTable cartTable = $CartTableTable(this);
  late final $TypeItemTableTable typeItemTable = $TypeItemTableTable(this);
  late final $ItemTableTable itemTable = $ItemTableTable(this);
  late final $OrderTableTable orderTable = $OrderTableTable(this);
  late final $OrderItemTableTable orderItemTable = $OrderItemTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [cartTable, typeItemTable, itemTable, orderTable, orderItemTable];
}

typedef $$CartTableTableCreateCompanionBuilder = CartTableCompanion Function({
  Value<int> id,
  required bool isCombo,
  required String name,
  required String img,
  required double total,
  required double subTotal,
  required double discount,
  required String itemsList,
  required DateTime date,
});
typedef $$CartTableTableUpdateCompanionBuilder = CartTableCompanion Function({
  Value<int> id,
  Value<bool> isCombo,
  Value<String> name,
  Value<String> img,
  Value<double> total,
  Value<double> subTotal,
  Value<double> discount,
  Value<String> itemsList,
  Value<DateTime> date,
});

class $$CartTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CartTableTable,
    CartTableData,
    $$CartTableTableFilterComposer,
    $$CartTableTableOrderingComposer,
    $$CartTableTableCreateCompanionBuilder,
    $$CartTableTableUpdateCompanionBuilder> {
  $$CartTableTableTableManager(_$AppDatabase db, $CartTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$CartTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$CartTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<bool> isCombo = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> img = const Value.absent(),
            Value<double> total = const Value.absent(),
            Value<double> subTotal = const Value.absent(),
            Value<double> discount = const Value.absent(),
            Value<String> itemsList = const Value.absent(),
            Value<DateTime> date = const Value.absent(),
          }) =>
              CartTableCompanion(
            id: id,
            isCombo: isCombo,
            name: name,
            img: img,
            total: total,
            subTotal: subTotal,
            discount: discount,
            itemsList: itemsList,
            date: date,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required bool isCombo,
            required String name,
            required String img,
            required double total,
            required double subTotal,
            required double discount,
            required String itemsList,
            required DateTime date,
          }) =>
              CartTableCompanion.insert(
            id: id,
            isCombo: isCombo,
            name: name,
            img: img,
            total: total,
            subTotal: subTotal,
            discount: discount,
            itemsList: itemsList,
            date: date,
          ),
        ));
}

class $$CartTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $CartTableTable> {
  $$CartTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isCombo => $state.composableBuilder(
      column: $state.table.isCombo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get img => $state.composableBuilder(
      column: $state.table.img,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get total => $state.composableBuilder(
      column: $state.table.total,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get subTotal => $state.composableBuilder(
      column: $state.table.subTotal,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get discount => $state.composableBuilder(
      column: $state.table.discount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get itemsList => $state.composableBuilder(
      column: $state.table.itemsList,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get date => $state.composableBuilder(
      column: $state.table.date,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$CartTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $CartTableTable> {
  $$CartTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isCombo => $state.composableBuilder(
      column: $state.table.isCombo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get img => $state.composableBuilder(
      column: $state.table.img,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get total => $state.composableBuilder(
      column: $state.table.total,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get subTotal => $state.composableBuilder(
      column: $state.table.subTotal,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get discount => $state.composableBuilder(
      column: $state.table.discount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get itemsList => $state.composableBuilder(
      column: $state.table.itemsList,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get date => $state.composableBuilder(
      column: $state.table.date,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$TypeItemTableTableCreateCompanionBuilder = TypeItemTableCompanion
    Function({
  Value<int> id,
  required String name,
});
typedef $$TypeItemTableTableUpdateCompanionBuilder = TypeItemTableCompanion
    Function({
  Value<int> id,
  Value<String> name,
});

class $$TypeItemTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TypeItemTableTable,
    TypeItemTableData,
    $$TypeItemTableTableFilterComposer,
    $$TypeItemTableTableOrderingComposer,
    $$TypeItemTableTableCreateCompanionBuilder,
    $$TypeItemTableTableUpdateCompanionBuilder> {
  $$TypeItemTableTableTableManager(_$AppDatabase db, $TypeItemTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$TypeItemTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$TypeItemTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
          }) =>
              TypeItemTableCompanion(
            id: id,
            name: name,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
          }) =>
              TypeItemTableCompanion.insert(
            id: id,
            name: name,
          ),
        ));
}

class $$TypeItemTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $TypeItemTableTable> {
  $$TypeItemTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter itemTableRefs(
      ComposableFilter Function($$ItemTableTableFilterComposer f) f) {
    final $$ItemTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.itemTable,
        getReferencedColumn: (t) => t.type,
        builder: (joinBuilder, parentComposers) =>
            $$ItemTableTableFilterComposer(ComposerState(
                $state.db, $state.db.itemTable, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$TypeItemTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $TypeItemTableTable> {
  $$TypeItemTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$ItemTableTableCreateCompanionBuilder = ItemTableCompanion Function({
  Value<int> id,
  required String name,
  required double price,
  required String imagePath,
  required int type,
});
typedef $$ItemTableTableUpdateCompanionBuilder = ItemTableCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<double> price,
  Value<String> imagePath,
  Value<int> type,
});

class $$ItemTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ItemTableTable,
    ItemTableData,
    $$ItemTableTableFilterComposer,
    $$ItemTableTableOrderingComposer,
    $$ItemTableTableCreateCompanionBuilder,
    $$ItemTableTableUpdateCompanionBuilder> {
  $$ItemTableTableTableManager(_$AppDatabase db, $ItemTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ItemTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$ItemTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<double> price = const Value.absent(),
            Value<String> imagePath = const Value.absent(),
            Value<int> type = const Value.absent(),
          }) =>
              ItemTableCompanion(
            id: id,
            name: name,
            price: price,
            imagePath: imagePath,
            type: type,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required double price,
            required String imagePath,
            required int type,
          }) =>
              ItemTableCompanion.insert(
            id: id,
            name: name,
            price: price,
            imagePath: imagePath,
            type: type,
          ),
        ));
}

class $$ItemTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $ItemTableTable> {
  $$ItemTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get price => $state.composableBuilder(
      column: $state.table.price,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get imagePath => $state.composableBuilder(
      column: $state.table.imagePath,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$TypeItemTableTableFilterComposer get type {
    final $$TypeItemTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.type,
        referencedTable: $state.db.typeItemTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$TypeItemTableTableFilterComposer(ComposerState($state.db,
                $state.db.typeItemTable, joinBuilder, parentComposers)));
    return composer;
  }

  ComposableFilter orderItemTableRefs(
      ComposableFilter Function($$OrderItemTableTableFilterComposer f) f) {
    final $$OrderItemTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.orderItemTable,
        getReferencedColumn: (t) => t.itemId,
        builder: (joinBuilder, parentComposers) =>
            $$OrderItemTableTableFilterComposer(ComposerState($state.db,
                $state.db.orderItemTable, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$ItemTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $ItemTableTable> {
  $$ItemTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get price => $state.composableBuilder(
      column: $state.table.price,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get imagePath => $state.composableBuilder(
      column: $state.table.imagePath,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$TypeItemTableTableOrderingComposer get type {
    final $$TypeItemTableTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.type,
            referencedTable: $state.db.typeItemTable,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder, parentComposers) =>
                $$TypeItemTableTableOrderingComposer(ComposerState($state.db,
                    $state.db.typeItemTable, joinBuilder, parentComposers)));
    return composer;
  }
}

typedef $$OrderTableTableCreateCompanionBuilder = OrderTableCompanion Function({
  Value<int> id,
  required double total,
  required double subTotal,
  required double discount,
  required String paymentMethod,
  required DateTime date,
});
typedef $$OrderTableTableUpdateCompanionBuilder = OrderTableCompanion Function({
  Value<int> id,
  Value<double> total,
  Value<double> subTotal,
  Value<double> discount,
  Value<String> paymentMethod,
  Value<DateTime> date,
});

class $$OrderTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $OrderTableTable,
    OrderTableData,
    $$OrderTableTableFilterComposer,
    $$OrderTableTableOrderingComposer,
    $$OrderTableTableCreateCompanionBuilder,
    $$OrderTableTableUpdateCompanionBuilder> {
  $$OrderTableTableTableManager(_$AppDatabase db, $OrderTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$OrderTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$OrderTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<double> total = const Value.absent(),
            Value<double> subTotal = const Value.absent(),
            Value<double> discount = const Value.absent(),
            Value<String> paymentMethod = const Value.absent(),
            Value<DateTime> date = const Value.absent(),
          }) =>
              OrderTableCompanion(
            id: id,
            total: total,
            subTotal: subTotal,
            discount: discount,
            paymentMethod: paymentMethod,
            date: date,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required double total,
            required double subTotal,
            required double discount,
            required String paymentMethod,
            required DateTime date,
          }) =>
              OrderTableCompanion.insert(
            id: id,
            total: total,
            subTotal: subTotal,
            discount: discount,
            paymentMethod: paymentMethod,
            date: date,
          ),
        ));
}

class $$OrderTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $OrderTableTable> {
  $$OrderTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get total => $state.composableBuilder(
      column: $state.table.total,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get subTotal => $state.composableBuilder(
      column: $state.table.subTotal,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get discount => $state.composableBuilder(
      column: $state.table.discount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get paymentMethod => $state.composableBuilder(
      column: $state.table.paymentMethod,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get date => $state.composableBuilder(
      column: $state.table.date,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter orderItemTableRefs(
      ComposableFilter Function($$OrderItemTableTableFilterComposer f) f) {
    final $$OrderItemTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.orderItemTable,
        getReferencedColumn: (t) => t.orderId,
        builder: (joinBuilder, parentComposers) =>
            $$OrderItemTableTableFilterComposer(ComposerState($state.db,
                $state.db.orderItemTable, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$OrderTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $OrderTableTable> {
  $$OrderTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get total => $state.composableBuilder(
      column: $state.table.total,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get subTotal => $state.composableBuilder(
      column: $state.table.subTotal,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get discount => $state.composableBuilder(
      column: $state.table.discount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get paymentMethod => $state.composableBuilder(
      column: $state.table.paymentMethod,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get date => $state.composableBuilder(
      column: $state.table.date,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$OrderItemTableTableCreateCompanionBuilder = OrderItemTableCompanion
    Function({
  Value<int> id,
  required String name,
  required int quantity,
  required double price,
  required int itemId,
  required int orderId,
});
typedef $$OrderItemTableTableUpdateCompanionBuilder = OrderItemTableCompanion
    Function({
  Value<int> id,
  Value<String> name,
  Value<int> quantity,
  Value<double> price,
  Value<int> itemId,
  Value<int> orderId,
});

class $$OrderItemTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $OrderItemTableTable,
    OrderItemTableData,
    $$OrderItemTableTableFilterComposer,
    $$OrderItemTableTableOrderingComposer,
    $$OrderItemTableTableCreateCompanionBuilder,
    $$OrderItemTableTableUpdateCompanionBuilder> {
  $$OrderItemTableTableTableManager(
      _$AppDatabase db, $OrderItemTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$OrderItemTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$OrderItemTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> quantity = const Value.absent(),
            Value<double> price = const Value.absent(),
            Value<int> itemId = const Value.absent(),
            Value<int> orderId = const Value.absent(),
          }) =>
              OrderItemTableCompanion(
            id: id,
            name: name,
            quantity: quantity,
            price: price,
            itemId: itemId,
            orderId: orderId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required int quantity,
            required double price,
            required int itemId,
            required int orderId,
          }) =>
              OrderItemTableCompanion.insert(
            id: id,
            name: name,
            quantity: quantity,
            price: price,
            itemId: itemId,
            orderId: orderId,
          ),
        ));
}

class $$OrderItemTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $OrderItemTableTable> {
  $$OrderItemTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get quantity => $state.composableBuilder(
      column: $state.table.quantity,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get price => $state.composableBuilder(
      column: $state.table.price,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$ItemTableTableFilterComposer get itemId {
    final $$ItemTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $state.db.itemTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$ItemTableTableFilterComposer(ComposerState(
                $state.db, $state.db.itemTable, joinBuilder, parentComposers)));
    return composer;
  }

  $$OrderTableTableFilterComposer get orderId {
    final $$OrderTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.orderId,
        referencedTable: $state.db.orderTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$OrderTableTableFilterComposer(ComposerState($state.db,
                $state.db.orderTable, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$OrderItemTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $OrderItemTableTable> {
  $$OrderItemTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get quantity => $state.composableBuilder(
      column: $state.table.quantity,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get price => $state.composableBuilder(
      column: $state.table.price,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$ItemTableTableOrderingComposer get itemId {
    final $$ItemTableTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.itemId,
        referencedTable: $state.db.itemTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$ItemTableTableOrderingComposer(ComposerState(
                $state.db, $state.db.itemTable, joinBuilder, parentComposers)));
    return composer;
  }

  $$OrderTableTableOrderingComposer get orderId {
    final $$OrderTableTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.orderId,
        referencedTable: $state.db.orderTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$OrderTableTableOrderingComposer(ComposerState($state.db,
                $state.db.orderTable, joinBuilder, parentComposers)));
    return composer;
  }
}

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CartTableTableTableManager get cartTable =>
      $$CartTableTableTableManager(_db, _db.cartTable);
  $$TypeItemTableTableTableManager get typeItemTable =>
      $$TypeItemTableTableTableManager(_db, _db.typeItemTable);
  $$ItemTableTableTableManager get itemTable =>
      $$ItemTableTableTableManager(_db, _db.itemTable);
  $$OrderTableTableTableManager get orderTable =>
      $$OrderTableTableTableManager(_db, _db.orderTable);
  $$OrderItemTableTableTableManager get orderItemTable =>
      $$OrderItemTableTableTableManager(_db, _db.orderItemTable);
}
