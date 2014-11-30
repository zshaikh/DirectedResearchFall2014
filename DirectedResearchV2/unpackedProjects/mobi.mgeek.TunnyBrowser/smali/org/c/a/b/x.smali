.class public Lorg/c/a/b/x;
.super Ljava/lang/Object;
.source "HttpVersions.java"


# static fields
.field public static final a:Lorg/c/a/c/h;

.field public static final b:Lorg/c/a/c/f;

.field public static final c:Lorg/c/a/c/f;

.field public static final d:Lorg/c/a/c/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lorg/c/a/c/h;

    invoke-direct {v0}, Lorg/c/a/c/h;-><init>()V

    sput-object v0, Lorg/c/a/b/x;->a:Lorg/c/a/c/h;

    .line 44
    sget-object v0, Lorg/c/a/b/x;->a:Lorg/c/a/c/h;

    const-string v1, ""

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lorg/c/a/c/h;->a(Ljava/lang/String;I)Lorg/c/a/c/i;

    move-result-object v0

    sput-object v0, Lorg/c/a/b/x;->b:Lorg/c/a/c/f;

    .line 45
    sget-object v0, Lorg/c/a/b/x;->a:Lorg/c/a/c/h;

    const-string v1, "HTTP/1.0"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lorg/c/a/c/h;->a(Ljava/lang/String;I)Lorg/c/a/c/i;

    move-result-object v0

    sput-object v0, Lorg/c/a/b/x;->c:Lorg/c/a/c/f;

    .line 46
    sget-object v0, Lorg/c/a/b/x;->a:Lorg/c/a/c/h;

    const-string v1, "HTTP/1.1"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lorg/c/a/c/h;->a(Ljava/lang/String;I)Lorg/c/a/c/i;

    move-result-object v0

    sput-object v0, Lorg/c/a/b/x;->d:Lorg/c/a/c/f;

    return-void
.end method
