.class public Lcom/c/b/b/k;
.super Ljava/lang/Object;
.source "NoteStore.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lorg/apache/c/b",
        "<",
        "Lcom/c/b/b/k;",
        "Lcom/c/b/b/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/c/b/b/l;",
            "Lorg/apache/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lorg/apache/c/b/j;

.field private static final c:Lorg/apache/c/b/b;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xb

    .line 13918
    new-instance v0, Lorg/apache/c/b/j;

    const-string v1, "getDefaultNotebook_args"

    invoke-direct {v0, v1}, Lorg/apache/c/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/c/b/b/k;->b:Lorg/apache/c/b/j;

    .line 13920
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "authenticationToken"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/b/k;->c:Lorg/apache/c/b/b;

    .line 13986
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/c/b/b/l;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 13987
    sget-object v1, Lcom/c/b/b/l;->a:Lcom/c/b/b/l;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "authenticationToken"

    const/4 v4, 0x3

    new-instance v5, Lorg/apache/c/a/c;

    invoke-direct {v5, v6}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13989
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/c/b/b/k;->a:Ljava/util/Map;

    .line 13990
    const-class v0, Lcom/c/b/b/k;

    sget-object v1, Lcom/c/b/b/k;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/c/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 13991
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13994
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14025
    iput-object p1, p0, Lcom/c/b/b/k;->d:Ljava/lang/String;

    .line 14026
    return-void
.end method

.method public a(Lorg/apache/c/b/f;)V
    .locals 1

    .prologue
    .line 14157
    invoke-virtual {p0}, Lcom/c/b/b/k;->b()V

    .line 14159
    sget-object v0, Lcom/c/b/b/k;->b:Lorg/apache/c/b/j;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/j;)V

    .line 14160
    iget-object v0, p0, Lcom/c/b/b/k;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 14161
    sget-object v0, Lcom/c/b/b/k;->c:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 14162
    iget-object v0, p0, Lcom/c/b/b/k;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 14163
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 14165
    :cond_0
    invoke-virtual {p1}, Lorg/apache/c/b/f;->e()V

    .line 14166
    invoke-virtual {p1}, Lorg/apache/c/b/f;->c()V

    .line 14167
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 14034
    iget-object v0, p0, Lcom/c/b/b/k;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/c/b/b/k;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 14087
    if-nez p1, :cond_1

    .line 14099
    :cond_0
    :goto_0
    return v0

    .line 14090
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/b/k;->a()Z

    move-result v1

    .line 14091
    invoke-virtual {p1}, Lcom/c/b/b/k;->a()Z

    move-result v2

    .line 14092
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 14093
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 14095
    iget-object v1, p0, Lcom/c/b/b/k;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/b/k;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14099
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/c/b/b/k;)I
    .locals 2

    .prologue
    .line 14107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 14123
    :cond_0
    :goto_0
    return v0

    .line 14114
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/b/k;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/b/k;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 14115
    if-nez v0, :cond_0

    .line 14118
    invoke-virtual {p0}, Lcom/c/b/b/k;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/b/b/k;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/b/k;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 14119
    if-nez v0, :cond_0

    .line 14123
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 14186
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 13917
    check-cast p1, Lcom/c/b/b/k;

    invoke-virtual {p0, p1}, Lcom/c/b/b/k;->b(Lcom/c/b/b/k;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 14079
    if-nez p1, :cond_1

    .line 14083
    :cond_0
    :goto_0
    return v0

    .line 14081
    :cond_1
    instance-of v1, p1, Lcom/c/b/b/k;

    if-eqz v1, :cond_0

    .line 14082
    check-cast p1, Lcom/c/b/b/k;

    invoke-virtual {p0, p1}, Lcom/c/b/b/k;->a(Lcom/c/b/b/k;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 14103
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDefaultNotebook_args("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14173
    const-string v1, "authenticationToken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14174
    iget-object v1, p0, Lcom/c/b/b/k;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 14175
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14180
    :goto_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 14177
    :cond_0
    iget-object v1, p0, Lcom/c/b/b/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
