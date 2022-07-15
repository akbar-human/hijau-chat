import 'dart:convert';

class ChatModel {
  String name;
  String icon;
  bool isGroup;
  String time;
  String currentMessage;

  ///Model for chat model
  ChatModel({
    required this.name,
    required this.icon,
    required this.isGroup,
    required this.time,
    required this.currentMessage,
  });
  

  ChatModel copyWith({
    String? name,
    String? icon,
    bool? isGroup,
    String? time,
    String? currentMessage,
  }) {
    return ChatModel(
      name: name ?? this.name,
      icon: icon ?? this.icon,
      isGroup: isGroup ?? this.isGroup,
      time: time ?? this.time,
      currentMessage: currentMessage ?? this.currentMessage,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'name': name});
    result.addAll({'icon': icon});
    result.addAll({'isGroup': isGroup});
    result.addAll({'time': time});
    result.addAll({'currentMessage': currentMessage});
  
    return result;
  }

  ///convert data From Map to ChatModel data
  factory ChatModel.fromMap(Map<String, dynamic> map) {
    return ChatModel(
      name: map['name'] ?? '',
      icon: map['icon'] ?? '',
      isGroup: map['isGroup'] ?? false,
      time: map['time'] ?? '',
      currentMessage: map['currentMessage'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatModel.fromJson(String source) => ChatModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ChatModel(name: $name, icon: $icon, isGroup: $isGroup, time: $time, currentMessage: $currentMessage)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ChatModel &&
      other.name == name &&
      other.icon == icon &&
      other.isGroup == isGroup &&
      other.time == time &&
      other.currentMessage == currentMessage;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      icon.hashCode ^
      isGroup.hashCode ^
      time.hashCode ^
      currentMessage.hashCode;
  }
}
