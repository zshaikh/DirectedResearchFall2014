.class public Lorg/c/a/b/s;
.super Ljava/lang/Object;
.source "HttpSchemes.java"


# static fields
.field public static final a:Lorg/c/a/c/f;

.field public static final b:Lorg/c/a/c/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lorg/c/a/c/o;

    const-string v1, "http"

    invoke-direct {v0, v1}, Lorg/c/a/c/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/c/a/b/s;->a:Lorg/c/a/c/f;

    .line 37
    new-instance v0, Lorg/c/a/c/o;

    const-string v1, "https"

    invoke-direct {v0, v1}, Lorg/c/a/c/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/c/a/b/s;->b:Lorg/c/a/c/f;

    return-void
.end method
