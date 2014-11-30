.class Lorg/c/a/b/i;
.super Ljava/lang/Object;
.source "HttpFields.java"


# instance fields
.field final a:[Ljava/text/SimpleDateFormat;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    invoke-static {}, Lorg/c/a/b/e;->d()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lorg/c/a/b/i;->a:[Ljava/text/SimpleDateFormat;

    return-void
.end method

.method synthetic constructor <init>(Lorg/c/a/b/f;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Lorg/c/a/b/i;-><init>()V

    return-void
.end method
