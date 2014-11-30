.class public Lcom/c/b/b/q;
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
        "Lcom/c/b/b/q;",
        "Lcom/c/b/b/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/c/b/b/r;",
            "Lorg/apache/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lorg/apache/c/b/j;

.field private static final c:Lorg/apache/c/b/b;

.field private static final d:Lorg/apache/c/b/b;

.field private static final e:Lorg/apache/c/b/b;


# instance fields
.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/c/b/c/l;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/c/b/a/f;

.field private h:Lcom/c/b/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xf

    const/4 v8, 0x3

    const/16 v7, 0xc

    .line 12540
    new-instance v0, Lorg/apache/c/b/j;

    const-string v1, "listNotebooks_result"

    invoke-direct {v0, v1}, Lorg/apache/c/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/c/b/b/q;->b:Lorg/apache/c/b/j;

    .line 12542
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/b/q;->c:Lorg/apache/c/b/b;

    .line 12543
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "userException"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/b/q;->d:Lorg/apache/c/b/b;

    .line 12544
    new-instance v0, Lorg/apache/c/b/b;

    const-string v1, "systemException"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/c/b/b;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/c/b/b/q;->e:Lorg/apache/c/b/b;

    .line 12618
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/c/b/b/r;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 12619
    sget-object v1, Lcom/c/b/b/r;->a:Lcom/c/b/b/r;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "success"

    new-instance v4, Lorg/apache/c/a/d;

    new-instance v5, Lorg/apache/c/a/g;

    const-class v6, Lcom/c/b/c/l;

    invoke-direct {v5, v7, v6}, Lorg/apache/c/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v9, v5}, Lorg/apache/c/a/d;-><init>(BLorg/apache/c/a/c;)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12622
    sget-object v1, Lcom/c/b/b/r;->b:Lcom/c/b/b/r;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "userException"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v7}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12624
    sget-object v1, Lcom/c/b/b/r;->c:Lcom/c/b/b/r;

    new-instance v2, Lorg/apache/c/a/b;

    const-string v3, "systemException"

    new-instance v4, Lorg/apache/c/a/c;

    invoke-direct {v4, v7}, Lorg/apache/c/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/c/a/b;-><init>(Ljava/lang/String;BLorg/apache/c/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12626
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/c/b/b/q;->a:Ljava/util/Map;

    .line 12627
    const-class v0, Lcom/c/b/b/q;

    sget-object v1, Lcom/c/b/b/q;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/c/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 12628
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12631
    return-void
.end method

.method static synthetic c(Lcom/c/b/b/q;)Ljava/util/List;
    .locals 1

    .prologue
    .line 12539
    iget-object v0, p0, Lcom/c/b/b/q;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/c/b/b/q;)Lcom/c/b/a/f;
    .locals 1

    .prologue
    .line 12539
    iget-object v0, p0, Lcom/c/b/b/q;->g:Lcom/c/b/a/f;

    return-object v0
.end method

.method static synthetic e(Lcom/c/b/b/q;)Lcom/c/b/a/d;
    .locals 1

    .prologue
    .line 12539
    iget-object v0, p0, Lcom/c/b/b/q;->h:Lcom/c/b/a/d;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/apache/c/b/f;)V
    .locals 5

    .prologue
    const/16 v4, 0xc

    .line 12908
    invoke-virtual {p1}, Lorg/apache/c/b/f;->j()Lorg/apache/c/b/j;

    .line 12911
    :goto_0
    invoke-virtual {p1}, Lorg/apache/c/b/f;->l()Lorg/apache/c/b/b;

    move-result-object v0

    .line 12912
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-nez v1, :cond_0

    .line 12955
    invoke-virtual {p1}, Lorg/apache/c/b/f;->k()V

    .line 12956
    invoke-virtual {p0}, Lcom/c/b/b/q;->d()V

    .line 12957
    return-void

    .line 12915
    :cond_0
    iget-short v1, v0, Lorg/apache/c/b/b;->c:S

    packed-switch v1, :pswitch_data_0

    .line 12951
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    .line 12953
    :goto_1
    invoke-virtual {p1}, Lorg/apache/c/b/f;->m()V

    goto :goto_0

    .line 12917
    :pswitch_0
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    .line 12919
    invoke-virtual {p1}, Lorg/apache/c/b/f;->p()Lorg/apache/c/b/c;

    move-result-object v1

    .line 12920
    new-instance v0, Ljava/util/ArrayList;

    iget v2, v1, Lorg/apache/c/b/c;->b:I

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/c/b/b/q;->f:Ljava/util/List;

    .line 12921
    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lorg/apache/c/b/c;->b:I

    if-ge v0, v2, :cond_1

    .line 12924
    new-instance v2, Lcom/c/b/c/l;

    invoke-direct {v2}, Lcom/c/b/c/l;-><init>()V

    .line 12925
    invoke-virtual {v2, p1}, Lcom/c/b/c/l;->a(Lorg/apache/c/b/f;)V

    .line 12926
    iget-object v3, p0, Lcom/c/b/b/q;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12921
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 12928
    :cond_1
    invoke-virtual {p1}, Lorg/apache/c/b/f;->q()V

    goto :goto_1

    .line 12931
    :cond_2
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 12935
    :pswitch_1
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v4, :cond_3

    .line 12936
    new-instance v0, Lcom/c/b/a/f;

    invoke-direct {v0}, Lcom/c/b/a/f;-><init>()V

    iput-object v0, p0, Lcom/c/b/b/q;->g:Lcom/c/b/a/f;

    .line 12937
    iget-object v0, p0, Lcom/c/b/b/q;->g:Lcom/c/b/a/f;

    invoke-virtual {v0, p1}, Lcom/c/b/a/f;->a(Lorg/apache/c/b/f;)V

    goto :goto_1

    .line 12939
    :cond_3
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 12943
    :pswitch_2
    iget-byte v1, v0, Lorg/apache/c/b/b;->b:B

    if-ne v1, v4, :cond_4

    .line 12944
    new-instance v0, Lcom/c/b/a/d;

    invoke-direct {v0}, Lcom/c/b/a/d;-><init>()V

    iput-object v0, p0, Lcom/c/b/b/q;->h:Lcom/c/b/a/d;

    .line 12945
    iget-object v0, p0, Lcom/c/b/b/q;->h:Lcom/c/b/a/d;

    invoke-virtual {v0, p1}, Lcom/c/b/a/d;->a(Lorg/apache/c/b/f;)V

    goto :goto_1

    .line 12947
    :cond_4
    iget-byte v0, v0, Lorg/apache/c/b/b;->b:B

    invoke-static {p1, v0}, Lorg/apache/c/b/h;->a(Lorg/apache/c/b/f;B)V

    goto :goto_1

    .line 12915
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 12702
    iget-object v0, p0, Lcom/c/b/b/q;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/c/b/b/q;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 12827
    if-nez p1, :cond_1

    .line 12857
    :cond_0
    :goto_0
    return v0

    .line 12830
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/b/q;->a()Z

    move-result v1

    .line 12831
    invoke-virtual {p1}, Lcom/c/b/b/q;->a()Z

    move-result v2

    .line 12832
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 12833
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 12835
    iget-object v1, p0, Lcom/c/b/b/q;->f:Ljava/util/List;

    iget-object v2, p1, Lcom/c/b/b/q;->f:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12839
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/b/q;->b()Z

    move-result v1

    .line 12840
    invoke-virtual {p1}, Lcom/c/b/b/q;->b()Z

    move-result v2

    .line 12841
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 12842
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 12844
    iget-object v1, p0, Lcom/c/b/b/q;->g:Lcom/c/b/a/f;

    iget-object v2, p1, Lcom/c/b/b/q;->g:Lcom/c/b/a/f;

    invoke-virtual {v1, v2}, Lcom/c/b/a/f;->a(Lcom/c/b/a/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12848
    :cond_5
    invoke-virtual {p0}, Lcom/c/b/b/q;->c()Z

    move-result v1

    .line 12849
    invoke-virtual {p1}, Lcom/c/b/b/q;->c()Z

    move-result v2

    .line 12850
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 12851
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 12853
    iget-object v1, p0, Lcom/c/b/b/q;->h:Lcom/c/b/a/d;

    iget-object v2, p1, Lcom/c/b/b/q;->h:Lcom/c/b/a/d;

    invoke-virtual {v1, v2}, Lcom/c/b/a/d;->a(Lcom/c/b/a/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12857
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/c/b/b/q;)I
    .locals 2

    .prologue
    .line 12865
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12866
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

    .line 12899
    :cond_0
    :goto_0
    return v0

    .line 12872
    :cond_1
    invoke-virtual {p0}, Lcom/c/b/b/q;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/b/q;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 12873
    if-nez v0, :cond_0

    .line 12876
    invoke-virtual {p0}, Lcom/c/b/b/q;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/b/b/q;->f:Ljava/util/List;

    iget-object v1, p1, Lcom/c/b/b/q;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    .line 12877
    if-nez v0, :cond_0

    .line 12881
    :cond_2
    invoke-virtual {p0}, Lcom/c/b/b/q;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/b/q;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 12882
    if-nez v0, :cond_0

    .line 12885
    invoke-virtual {p0}, Lcom/c/b/b/q;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/c/b/b/q;->g:Lcom/c/b/a/f;

    iget-object v1, p1, Lcom/c/b/b/q;->g:Lcom/c/b/a/f;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 12886
    if-nez v0, :cond_0

    .line 12890
    :cond_3
    invoke-virtual {p0}, Lcom/c/b/b/q;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/b/q;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    .line 12891
    if-nez v0, :cond_0

    .line 12894
    invoke-virtual {p0}, Lcom/c/b/b/q;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/c/b/b/q;->h:Lcom/c/b/a/d;

    iget-object v1, p1, Lcom/c/b/b/q;->h:Lcom/c/b/a/d;

    invoke-static {v0, v1}, Lorg/apache/c/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 12895
    if-nez v0, :cond_0

    .line 12899
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 12725
    iget-object v0, p0, Lcom/c/b/b/q;->g:Lcom/c/b/a/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 12748
    iget-object v0, p0, Lcom/c/b/b/q;->h:Lcom/c/b/a/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 12539
    check-cast p1, Lcom/c/b/b/q;

    invoke-virtual {p0, p1}, Lcom/c/b/b/q;->b(Lcom/c/b/b/q;)I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 13019
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 12819
    if-nez p1, :cond_1

    .line 12823
    :cond_0
    :goto_0
    return v0

    .line 12821
    :cond_1
    instance-of v1, p1, Lcom/c/b/b/q;

    if-eqz v1, :cond_0

    .line 12822
    check-cast p1, Lcom/c/b/b/q;

    invoke-virtual {p0, p1}, Lcom/c/b/b/q;->a(Lcom/c/b/b/q;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 12861
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12987
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "listNotebooks_result("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12990
    const-string v1, "success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12991
    iget-object v1, p0, Lcom/c/b/b/q;->f:Ljava/util/List;

    if-nez v1, :cond_0

    .line 12992
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12997
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12998
    const-string v1, "userException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12999
    iget-object v1, p0, Lcom/c/b/b/q;->g:Lcom/c/b/a/f;

    if-nez v1, :cond_1

    .line 13000
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13005
    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13006
    const-string v1, "systemException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13007
    iget-object v1, p0, Lcom/c/b/b/q;->h:Lcom/c/b/a/d;

    if-nez v1, :cond_2

    .line 13008
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13013
    :goto_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13014
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 12994
    :cond_0
    iget-object v1, p0, Lcom/c/b/b/q;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13002
    :cond_1
    iget-object v1, p0, Lcom/c/b/b/q;->g:Lcom/c/b/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 13010
    :cond_2
    iget-object v1, p0, Lcom/c/b/b/q;->h:Lcom/c/b/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
