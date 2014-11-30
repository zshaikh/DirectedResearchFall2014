.class final Ldolphin/webkit/ek;
.super Ljava/lang/Object;
.source "JniUtil.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Ldolphin/webkit/ek;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 375
    iget-object v2, p0, Ldolphin/webkit/ek;->a:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 376
    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 378
    :cond_0
    return v0

    .line 375
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
