.class public Lcom/c/b/b/g;
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
        "Lcom/c/b/b/g;",
        "Lcom/c/b/b/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/c/b/b/h;",
            "Lorg/apache/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lorg/apache/c/b/j;

.field private static final c:Lorg/apache/c/b/b;

.field private static final d:Lorg/apache/c/b/b;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Lcom/c/b/c/x;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/16 v5, 0xb

    const/4 v6, 0x3

    .line 19813
    new-instance v0, Lorg/apache/c/b/j;

    const-string v1, "createTag_args"

    invoke-direct {v0, v1}, Lorg/apache/c/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/c/b/b/g;->b:Lorg/apache/c/b/j;

    .line 19815
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "authenticationToken"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/b/g;->c:Lorg/apache/c/b/b;

    .line 19816
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "tag"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/b/g;->d:Lorg/apache/c/b/b;

    .line 19886
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/c/b/b/h;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 19887
    sget-object v1, Lcom/c/b/b/h;->a:Lcom/c/b/b/h;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "authenticationToken"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v5}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19889
    sget-object v1, Lcom/c/b/b/h;->b:Lcom/c/b/b/h;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "tag"

    new-instance v4, Lorg/apache/c/a/g;

    const-class v5, Lcom/c/b/c/x;

    invoke-direct {v4, v7, v5}, Lorg/apache/c/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19891
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/c/b/b/g;->a:Ljava/util/Map;

    .line 19892
    const-class v0, Lcom/c/b/b/g;

    sget-object v1, Lcom/c/b/b/g;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/c/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 19893
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19896
    return-void
.end method


# virtual methods
.method public a(Lcom/c/b/c/x;)V
    .locals 0

    .prologue
    .line 19956
    iput-object p1, p0, Lcom/c/b/b/g;->f:Lcom/c/b/c/x;

    .line 19957
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19933
    iput-object p1, p0, Lcom/c/b/b/g;->e:Ljava/lang/String;

    .line 19934
    return-void
.end method

.method public a(Lorg/apache/c/b/f;)V
    .locals 1

    .prologue
    .line 20127
    invoke-virtual {p0}, Lcom/c/b/b/g;->c()V

    .line 20129
    sget-object v0, Lcom/c/b/b/g;->b:Lorg/apache/c/b/j;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/j;)V

    .line 20130
    iget-object v0, p0, Lcom/c/b/b/g;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 20131
    sget-object v0, Lcom/c/b/b/g;->c:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 20132
    iget-object v0, p0, Lcom/c/b/b/g;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 20133
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 20135
    :cond_0
    iget-object v0, p0, Lcom/c/b/b/g;->f:Lcom/c/b/c/x;

    if-eqz v0, :cond_1

    .line 20136
    sget-object v0, Lcom/c/b/b/g;->d:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 20137
    iget-object v0, p0, Lcom/c/b/b/g;->f:Lcom/c/b/c/x;

    invoke-virtual {v0, p1}, Lcom/c/b/c/x;->b(Lorg/apache/c/b/f;)V

    .line 20138
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 20140
    :cond_1
    invoke-virtual {p1}, Lorg/apache/c/b/f;->e()V

    .line 20141
    invoke-virtual {p1}, Lorg/apache/c/b/f;->c()V

    .line 20142
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 19942
    iget-object v0, p0, Lcom/c/b/b/g;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/c/b/b/g;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 20031
    if-nez p1, :cond_1

    .line 20052
    :cond_0
    :goto_0
    return v0

    .line 20034
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/b/g;->a()Z

    move-result v1

    .line 20035
    invoke-virtual {p1}, Lcom/c/b/b/g;->a()Z

    move-result v2

    .line 20036
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 20037
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 20039
    iget-object v1, p0, Lcom/c/b/b/g;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/b/g;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20043
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/b/g;->b()Z

    move-result v1

    .line 20044
    invoke-virtual {p1}, Lcom/c/b/b/g;->b()Z

    move-result v2

    .line 20045
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 20046
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 20048
    iget-object v1, p0, Lcom/c/b/b/g;->f:Lcom/c/b/c/x;

    iget-object v2, p1, Lcom/c/b/b/g;->f:Lcom/c/b/c/x;

    invoke-virtual {v1, v2}, Lcom/c/b/c/x;->a(Lcom/c/b/c/x;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20052
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/c/b/b/g;)I
    .locals 2

    .prologue
    .line 20060
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20061
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

    .line 20085
    :cond_0
    :goto_0
    return v0

    .line 20067
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/b/g;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/b/g;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 20068
    if-nez v0, :cond_0

    .line 20071
    invoke-virtual {p0}, Lcom/c/b/b/g;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/b/b/g;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/b/g;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 20072
    if-nez v0, :cond_0

    .line 20076
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/b/g;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/b/g;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 20077
    if-nez v0, :cond_0

    .line 20080
    invoke-virtual {p0}, Lcom/c/b/b/g;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/c/b/b/g;->f:Lcom/c/b/c/x;

    iget-object v1, p1, Lcom/c/b/b/g;->f:Lcom/c/b/c/x;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 20081
    if-nez v0, :cond_0

    .line 20085
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 19965
    iget-object v0, p0, Lcom/c/b/b/g;->f:Lcom/c/b/c/x;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 20169
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 19812
    check-cast p1, Lcom/c/b/b/g;

    invoke-virtual {p0, p1}, Lcom/c/b/b/g;->b(Lcom/c/b/b/g;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 20023
    if-nez p1, :cond_1

    .line 20027
    :cond_0
    :goto_0
    return v0

    .line 20025
    :cond_1
    instance-of v1, p1, Lcom/c/b/b/g;

    if-eqz v1, :cond_0

    .line 20026
    check-cast p1, Lcom/c/b/b/g;

    invoke-virtual {p0, p1}, Lcom/c/b/b/g;->a(Lcom/c/b/b/g;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 20056
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createTag_args("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20148
    const-string v1, "authenticationToken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20149
    iget-object v1, p0, Lcom/c/b/b/g;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 20150
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20155
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20156
    const-string v1, "tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20157
    iget-object v1, p0, Lcom/c/b/b/g;->f:Lcom/c/b/c/x;

    if-nez v1, :cond_1

    .line 20158
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20163
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 20152
    :cond_0
    iget-object v1, p0, Lcom/c/b/b/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 20160
    :cond_1
    iget-object v1, p0, Lcom/c/b/b/g;->f:Lcom/c/b/c/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
