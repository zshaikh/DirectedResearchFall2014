.class public final Lorg/codehaus/jackson/map/deser/SettableBeanProperty$CreatorProperty;
.super Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
.source "SettableBeanProperty.java"


# instance fields
.field protected final a:Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

.field protected final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;I)V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/util/Annotations;)V

    .line 533
    iput-object p5, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$CreatorProperty;->a:Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    .line 534
    iput p6, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$CreatorProperty;->b:I

    .line 535
    return-void
.end method


# virtual methods
.method public a()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$CreatorProperty;->a:Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 583
    return-void
.end method

.method public a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 572
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$CreatorProperty;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$CreatorProperty;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 573
    return-void
.end method

.method public h()I
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$CreatorProperty;->b:I

    return v0
.end method
