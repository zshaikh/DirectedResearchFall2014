.class public Lcom/c/b/b/c;
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
        "Lcom/c/b/b/c;",
        "Lcom/c/b/b/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/c/b/b/d;",
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

.field private f:Lcom/c/b/c/g;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/16 v5, 0xb

    const/4 v6, 0x3

    .line 40631
    new-instance v0, Lorg/apache/c/b/j;

    const-string v1, "createNote_args"

    invoke-direct {v0, v1}, Lorg/apache/c/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/c/b/b/c;->b:Lorg/apache/c/b/j;

    .line 40633
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "authenticationToken"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/b/c;->c:Lorg/apache/c/b/b;

    .line 40634
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "note"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/b/c;->d:Lorg/apache/c/b/b;

    .line 40704
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/c/b/b/d;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 40705
    sget-object v1, Lcom/c/b/b/d;->a:Lcom/c/b/b/d;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "authenticationToken"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v5}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40707
    sget-object v1, Lcom/c/b/b/d;->b:Lcom/c/b/b/d;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "note"

    new-instance v4, Lorg/apache/c/a/g;

    const-class v5, Lcom/c/b/c/g;

    invoke-direct {v4, v7, v5}, Lorg/apache/c/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40709
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/c/b/b/c;->a:Ljava/util/Map;

    .line 40710
    const-class v0, Lcom/c/b/b/c;

    sget-object v1, Lcom/c/b/b/c;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/c/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 40711
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40714
    return-void
.end method


# virtual methods
.method public a(Lcom/c/b/c/g;)V
    .locals 0

    .prologue
    .line 40774
    iput-object p1, p0, Lcom/c/b/b/c;->f:Lcom/c/b/c/g;

    .line 40775
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40751
    iput-object p1, p0, Lcom/c/b/b/c;->e:Ljava/lang/String;

    .line 40752
    return-void
.end method

.method public a(Lorg/apache/c/b/f;)V
    .locals 1

    .prologue
    .line 40945
    invoke-virtual {p0}, Lcom/c/b/b/c;->c()V

    .line 40947
    sget-object v0, Lcom/c/b/b/c;->b:Lorg/apache/c/b/j;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/j;)V

    .line 40948
    iget-object v0, p0, Lcom/c/b/b/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 40949
    sget-object v0, Lcom/c/b/b/c;->c:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 40950
    iget-object v0, p0, Lcom/c/b/b/c;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Ljava/lang/String;)V

    .line 40951
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 40953
    :cond_0
    iget-object v0, p0, Lcom/c/b/b/c;->f:Lcom/c/b/c/g;

    if-eqz v0, :cond_1

    .line 40954
    sget-object v0, Lcom/c/b/b/c;->d:Lorg/apache/c/b/b;

    invoke-virtual {p1, v0}, Lorg/apache/c/b/f;->a(Lorg/apache/c/b/b;)V

    .line 40955
    iget-object v0, p0, Lcom/c/b/b/c;->f:Lcom/c/b/c/g;

    invoke-virtual {v0, p1}, Lcom/c/b/c/g;->b(Lorg/apache/c/b/f;)V

    .line 40956
    invoke-virtual {p1}, Lorg/apache/c/b/f;->d()V

    .line 40958
    :cond_1
    invoke-virtual {p1}, Lorg/apache/c/b/f;->e()V

    .line 40959
    invoke-virtual {p1}, Lorg/apache/c/b/f;->c()V

    .line 40960
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 40760
    iget-object v0, p0, Lcom/c/b/b/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/c/b/b/c;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 40849
    if-nez p1, :cond_1

    .line 40870
    :cond_0
    :goto_0
    return v0

    .line 40852
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/b/c;->a()Z

    move-result v1

    .line 40853
    invoke-virtual {p1}, Lcom/c/b/b/c;->a()Z

    move-result v2

    .line 40854
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 40855
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 40857
    iget-object v1, p0, Lcom/c/b/b/c;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/c/b/b/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40861
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/b/c;->b()Z

    move-result v1

    .line 40862
    invoke-virtual {p1}, Lcom/c/b/b/c;->b()Z

    move-result v2

    .line 40863
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 40864
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 40866
    iget-object v1, p0, Lcom/c/b/b/c;->f:Lcom/c/b/c/g;

    iget-object v2, p1, Lcom/c/b/b/c;->f:Lcom/c/b/c/g;

    invoke-virtual {v1, v2}, Lcom/c/b/c/g;->a(Lcom/c/b/c/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40870
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/c/b/b/c;)I
    .locals 2

    .prologue
    .line 40878
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40879
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

    .line 40903
    :cond_0
    :goto_0
    return v0

    .line 40885
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/b/c;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/b/c;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 40886
    if-nez v0, :cond_0

    .line 40889
    invoke-virtual {p0}, Lcom/c/b/b/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/b/b/c;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/c/b/b/c;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 40890
    if-nez v0, :cond_0

    .line 40894
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/b/c;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/b/c;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 40895
    if-nez v0, :cond_0

    .line 40898
    invoke-virtual {p0}, Lcom/c/b/b/c;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/c/b/b/c;->f:Lcom/c/b/c/g;

    iget-object v1, p1, Lcom/c/b/b/c;->f:Lcom/c/b/c/g;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 40899
    if-nez v0, :cond_0

    .line 40903
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 40783
    iget-object v0, p0, Lcom/c/b/b/c;->f:Lcom/c/b/c/g;

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
    .line 40987
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 40630
    check-cast p1, Lcom/c/b/b/c;

    invoke-virtual {p0, p1}, Lcom/c/b/b/c;->b(Lcom/c/b/b/c;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 40841
    if-nez p1, :cond_1

    .line 40845
    :cond_0
    :goto_0
    return v0

    .line 40843
    :cond_1
    instance-of v1, p1, Lcom/c/b/b/c;

    if-eqz v1, :cond_0

    .line 40844
    check-cast p1, Lcom/c/b/b/c;

    invoke-virtual {p0, p1}, Lcom/c/b/b/c;->a(Lcom/c/b/b/c;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 40874
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40963
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createNote_args("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40966
    const-string v1, "authenticationToken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40967
    iget-object v1, p0, Lcom/c/b/b/c;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 40968
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40973
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40974
    const-string v1, "note:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40975
    iget-object v1, p0, Lcom/c/b/b/c;->f:Lcom/c/b/c/g;

    if-nez v1, :cond_1

    .line 40976
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40981
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40982
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 40970
    :cond_0
    iget-object v1, p0, Lcom/c/b/b/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 40978
    :cond_1
    iget-object v1, p0, Lcom/c/b/b/c;->f:Lcom/c/b/c/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
