.class public Lorg/codehaus/jackson/map/BeanProperty$Std;
.super Ljava/lang/Object;
.source "BeanProperty.java"

# interfaces
.implements Lorg/codehaus/jackson/map/BeanProperty;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Lorg/codehaus/jackson/type/JavaType;

.field protected final c:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

.field protected final d:Lorg/codehaus/jackson/map/util/Annotations;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/codehaus/jackson/map/BeanProperty$Std;->a:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lorg/codehaus/jackson/map/BeanProperty$Std;->b:Lorg/codehaus/jackson/type/JavaType;

    .line 78
    iput-object p4, p0, Lorg/codehaus/jackson/map/BeanProperty$Std;->c:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 79
    iput-object p3, p0, Lorg/codehaus/jackson/map/BeanProperty$Std;->d:Lorg/codehaus/jackson/map/util/Annotations;

    .line 80
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/codehaus/jackson/map/BeanProperty$Std;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanProperty$Std;
    .locals 4

    .prologue
    .line 83
    new-instance v0, Lorg/codehaus/jackson/map/BeanProperty$Std;

    iget-object v1, p0, Lorg/codehaus/jackson/map/BeanProperty$Std;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/codehaus/jackson/map/BeanProperty$Std;->d:Lorg/codehaus/jackson/map/util/Annotations;

    iget-object v3, p0, Lorg/codehaus/jackson/map/BeanProperty$Std;->c:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V

    return-object v0
.end method
