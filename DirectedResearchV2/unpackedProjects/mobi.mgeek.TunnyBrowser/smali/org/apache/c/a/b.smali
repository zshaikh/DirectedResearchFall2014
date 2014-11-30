.class public Lorg/apache/c/a/b;
.super Ljava/lang/Object;
.source "FieldMetaData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static d:Ljava/util/Map;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:B

.field public final c:Lorg/apache/c/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/c/a/b;->d:Ljava/util/Map;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BLorg/apache/c/a/c;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/c/a/b;->a:Ljava/lang/String;

    .line 44
    iput-byte p2, p0, Lorg/apache/c/a/b;->b:B

    .line 45
    iput-object p3, p0, Lorg/apache/c/a/b;->c:Lorg/apache/c/a/c;

    .line 46
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lorg/apache/c/a/b;->d:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method
