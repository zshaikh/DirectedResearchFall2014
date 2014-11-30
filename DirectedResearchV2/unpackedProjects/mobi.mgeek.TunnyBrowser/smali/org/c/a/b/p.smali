.class public Lorg/c/a/b/p;
.super Ljava/lang/Object;
.source "HttpMethods.java"


# static fields
.field public static final a:Lorg/c/a/c/h;

.field public static final b:Lorg/c/a/c/f;

.field public static final c:Lorg/c/a/c/f;

.field public static final d:Lorg/c/a/c/f;

.field public static final e:Lorg/c/a/c/f;

.field public static final f:Lorg/c/a/c/f;

.field public static final g:Lorg/c/a/c/f;

.field public static final h:Lorg/c/a/c/f;

.field public static final i:Lorg/c/a/c/f;

.field public static final j:Lorg/c/a/c/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Lorg/c/a/c/h;

    invoke-direct {v0}, Lorg/c/a/c/h;-><init>()V

    sput-object v0, Lorg/c/a/b/p;->a:Lorg/c/a/c/h;

    .line 54
    sget-object v0, Lorg/c/a/b/p;->a:Lorg/c/a/c/h;

    const-string v1, "GET"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/c/a/c/h;->a(Ljava/lang/String;I)Lorg/c/a/c/i;

    move-result-object v0

    sput-object v0, Lorg/c/a/b/p;->b:Lorg/c/a/c/f;

    .line 55
    sget-object v0, Lorg/c/a/b/p;->a:Lorg/c/a/c/h;

    const-string v1, "POST"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/c/a/c/h;->a(Ljava/lang/String;I)Lorg/c/a/c/i;

    move-result-object v0

    sput-object v0, Lorg/c/a/b/p;->c:Lorg/c/a/c/f;

    .line 56
    sget-object v0, Lorg/c/a/b/p;->a:Lorg/c/a/c/h;

    const-string v1, "HEAD"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/c/a/c/h;->a(Ljava/lang/String;I)Lorg/c/a/c/i;

    move-result-object v0

    sput-object v0, Lorg/c/a/b/p;->d:Lorg/c/a/c/f;

    .line 57
    sget-object v0, Lorg/c/a/b/p;->a:Lorg/c/a/c/h;

    const-string v1, "PUT"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/c/a/c/h;->a(Ljava/lang/String;I)Lorg/c/a/c/i;

    move-result-object v0

    sput-object v0, Lorg/c/a/b/p;->e:Lorg/c/a/c/f;

    .line 58
    sget-object v0, Lorg/c/a/b/p;->a:Lorg/c/a/c/h;

    const-string v1, "OPTIONS"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lorg/c/a/c/h;->a(Ljava/lang/String;I)Lorg/c/a/c/i;

    move-result-object v0

    sput-object v0, Lorg/c/a/b/p;->f:Lorg/c/a/c/f;

    .line 59
    sget-object v0, Lorg/c/a/b/p;->a:Lorg/c/a/c/h;

    const-string v1, "DELETE"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lorg/c/a/c/h;->a(Ljava/lang/String;I)Lorg/c/a/c/i;

    move-result-object v0

    sput-object v0, Lorg/c/a/b/p;->g:Lorg/c/a/c/f;

    .line 60
    sget-object v0, Lorg/c/a/b/p;->a:Lorg/c/a/c/h;

    const-string v1, "TRACE"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lorg/c/a/c/h;->a(Ljava/lang/String;I)Lorg/c/a/c/i;

    move-result-object v0

    sput-object v0, Lorg/c/a/b/p;->h:Lorg/c/a/c/f;

    .line 61
    sget-object v0, Lorg/c/a/b/p;->a:Lorg/c/a/c/h;

    const-string v1, "CONNECT"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/c/a/c/h;->a(Ljava/lang/String;I)Lorg/c/a/c/i;

    move-result-object v0

    sput-object v0, Lorg/c/a/b/p;->i:Lorg/c/a/c/f;

    .line 62
    sget-object v0, Lorg/c/a/b/p;->a:Lorg/c/a/c/h;

    const-string v1, "MOVE"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lorg/c/a/c/h;->a(Ljava/lang/String;I)Lorg/c/a/c/i;

    move-result-object v0

    sput-object v0, Lorg/c/a/b/p;->j:Lorg/c/a/c/f;

    return-void
.end method
