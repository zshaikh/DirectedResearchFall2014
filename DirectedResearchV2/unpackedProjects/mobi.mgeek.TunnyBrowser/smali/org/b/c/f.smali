.class public Lorg/b/c/f;
.super Ljava/util/HashMap;
.source "HashMapMessage.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/b/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;",
        "Lorg/b/a/e;"
    }
.end annotation


# static fields
.field private static a:Lorg/b/c/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lorg/b/c/o;

    invoke-direct {v0}, Lorg/b/c/o;-><init>()V

    sput-object v0, Lorg/b/c/f;->a:Lorg/b/c/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    const-string v0, "advice"

    invoke-virtual {p0, v0}, Lorg/b/c/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public a(Z)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/b/c/f;->a()Ljava/util/Map;

    move-result-object v0

    .line 92
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 95
    const-string v1, "advice"

    invoke-virtual {p0, v1, v0}, Lorg/b/c/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 158
    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/b/c/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v0, "data"

    invoke-virtual {p0, v0, p1}, Lorg/b/c/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 142
    const-string v0, "channel"

    invoke-virtual {p0, v0}, Lorg/b/c/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_0
    const-string v0, "channel"

    invoke-virtual {p0, v0, p1}, Lorg/b/c/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "channel"

    invoke-virtual {p0, v0}, Lorg/b/c/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    const-string v0, "clientId"

    invoke-virtual {p0, v0}, Lorg/b/c/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_0
    const-string v0, "clientId"

    invoke-virtual {p0, v0, p1}, Lorg/b/c/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 173
    const-string v0, "successful"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/b/c/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "clientId"

    invoke-virtual {p0, v0}, Lorg/b/c/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 166
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/b/c/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :goto_0
    return-void

    .line 168
    :cond_0
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lorg/b/c/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/b/c/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/b/c/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/b/a/c;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/b/c/f;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "successful"

    invoke-virtual {p0, v0}, Lorg/b/c/f;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 135
    const-string v0, "successful"

    invoke-virtual {p0, v0}, Lorg/b/c/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 136
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/b/c/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
