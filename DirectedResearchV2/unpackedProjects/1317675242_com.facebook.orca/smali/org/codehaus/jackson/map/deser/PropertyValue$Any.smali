.class final Lorg/codehaus/jackson/map/deser/PropertyValue$Any;
.super Lorg/codehaus/jackson/map/deser/PropertyValue;
.source "PropertyValue.java"


# instance fields
.field final c:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

.field final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/deser/PropertyValue;Ljava/lang/Object;Lorg/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/PropertyValue;-><init>(Lorg/codehaus/jackson/map/deser/PropertyValue;Ljava/lang/Object;)V

    .line 79
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/PropertyValue$Any;->c:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    .line 80
    iput-object p4, p0, Lorg/codehaus/jackson/map/deser/PropertyValue$Any;->d:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/PropertyValue$Any;->c:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/PropertyValue$Any;->d:Ljava/lang/String;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/PropertyValue$Any;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    return-void
.end method
