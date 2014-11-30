.class final Ldolphin/webkit/bk;
.super Ljava/lang/Object;
.source "CookieManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ldolphin/webkit/bj;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/bi;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ldolphin/webkit/bk;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ldolphin/webkit/bj;Ldolphin/webkit/bj;)I
    .locals 2

    .prologue
    .line 145
    iget-object v0, p2, Ldolphin/webkit/bj;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Ldolphin/webkit/bj;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 146
    if-eqz v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    iget-object v0, p2, Ldolphin/webkit/bj;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Ldolphin/webkit/bj;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 149
    if-nez v0, :cond_0

    .line 153
    iget-object v0, p2, Ldolphin/webkit/bj;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 156
    iget-object v0, p1, Ldolphin/webkit/bj;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 157
    const/4 v0, -0x1

    goto :goto_0

    .line 159
    :cond_2
    iget-object v0, p1, Ldolphin/webkit/bj;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 162
    const/4 v0, 0x1

    goto :goto_0

    .line 166
    :cond_3
    iget-object v0, p1, Ldolphin/webkit/bj;->c:Ljava/lang/String;

    iget-object v1, p2, Ldolphin/webkit/bj;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 137
    check-cast p1, Ldolphin/webkit/bj;

    check-cast p2, Ldolphin/webkit/bj;

    invoke-virtual {p0, p1, p2}, Ldolphin/webkit/bk;->a(Ldolphin/webkit/bj;Ldolphin/webkit/bj;)I

    move-result v0

    return v0
.end method
