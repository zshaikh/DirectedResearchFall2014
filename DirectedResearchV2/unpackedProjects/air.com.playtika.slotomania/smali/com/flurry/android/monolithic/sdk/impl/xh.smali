.class public final Lcom/flurry/android/monolithic/sdk/impl/xh;
.super Lcom/flurry/android/monolithic/sdk/impl/xg;
.source "SourceFile"


# static fields
.field private static final l:[Lcom/flurry/android/monolithic/sdk/impl/xp;


# instance fields
.field protected final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected final c:Lcom/flurry/android/monolithic/sdk/impl/py;

.field protected final d:Lcom/flurry/android/monolithic/sdk/impl/qg;

.field protected final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected f:Lcom/flurry/android/monolithic/sdk/impl/xp;

.field protected g:Lcom/flurry/android/monolithic/sdk/impl/xi;

.field protected h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/xi;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/xl;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Lcom/flurry/android/monolithic/sdk/impl/xm;

.field protected k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/xj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/flurry/android/monolithic/sdk/impl/xp;

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/xh;->l:[Lcom/flurry/android/monolithic/sdk/impl/xp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/util/List;Lcom/flurry/android/monolithic/sdk/impl/py;Lcom/flurry/android/monolithic/sdk/impl/qg;Lcom/flurry/android/monolithic/sdk/impl/xp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Lcom/flurry/android/monolithic/sdk/impl/py;",
            "Lcom/flurry/android/monolithic/sdk/impl/qg;",
            "Lcom/flurry/android/monolithic/sdk/impl/xp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/xg;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->a:Ljava/lang/Class;

    .line 110
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->b:Ljava/util/List;

    .line 111
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->c:Lcom/flurry/android/monolithic/sdk/impl/py;

    .line 112
    iput-object p4, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->d:Lcom/flurry/android/monolithic/sdk/impl/qg;

    .line 113
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->d:Lcom/flurry/android/monolithic/sdk/impl/qg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->e:Ljava/lang/Class;

    .line 115
    iput-object p5, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->f:Lcom/flurry/android/monolithic/sdk/impl/xp;

    .line 116
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->d:Lcom/flurry/android/monolithic/sdk/impl/qg;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->a:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qg;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/py;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/xh;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/py;",
            "Lcom/flurry/android/monolithic/sdk/impl/qg;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/xh;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 132
    invoke-static {p0, v5}, Lcom/flurry/android/monolithic/sdk/impl/adz;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 133
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xh;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/xh;-><init>(Ljava/lang/Class;Ljava/util/List;Lcom/flurry/android/monolithic/sdk/impl/py;Lcom/flurry/android/monolithic/sdk/impl/qg;Lcom/flurry/android/monolithic/sdk/impl/xp;)V

    .line 134
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/xh;->m()V

    .line 135
    return-object v0
.end method

.method private a(I)[Lcom/flurry/android/monolithic/sdk/impl/xp;
    .locals 3

    .prologue
    .line 858
    if-nez p1, :cond_1

    .line 859
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/xh;->l:[Lcom/flurry/android/monolithic/sdk/impl/xp;

    .line 865
    :cond_0
    return-object v0

    .line 861
    :cond_1
    new-array v0, p1, [Lcom/flurry/android/monolithic/sdk/impl/xp;

    .line 862
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 863
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/xh;->o()Lcom/flurry/android/monolithic/sdk/impl/xp;

    move-result-object v2

    aput-object v2, v0, v1

    .line 862
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/py;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/xh;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/py;",
            "Lcom/flurry/android/monolithic/sdk/impl/qg;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/xh;"
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 147
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xh;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/xh;-><init>(Ljava/lang/Class;Ljava/util/List;Lcom/flurry/android/monolithic/sdk/impl/py;Lcom/flurry/android/monolithic/sdk/impl/qg;Lcom/flurry/android/monolithic/sdk/impl/xp;)V

    .line 148
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/xh;->m()V

    .line 149
    return-object v0
.end method

.method private b(Ljava/lang/reflect/Field;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 894
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 902
    :goto_0
    return v0

    .line 898
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 899
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    .line 900
    goto :goto_0

    .line 902
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private o()Lcom/flurry/android/monolithic/sdk/impl/xp;
    .locals 1

    .prologue
    .line 854
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xp;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/xp;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/reflect/Constructor;Z)Lcom/flurry/android/monolithic/sdk/impl/xi;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;Z)",
            "Lcom/flurry/android/monolithic/sdk/impl/xi;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 766
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->c:Lcom/flurry/android/monolithic/sdk/impl/py;

    if-nez v0, :cond_0

    .line 767
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xi;

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/xh;->o()Lcom/flurry/android/monolithic/sdk/impl/xp;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    invoke-direct {p0, v2}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(I)[Lcom/flurry/android/monolithic/sdk/impl/xp;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/xi;-><init>(Ljava/lang/reflect/Constructor;Lcom/flurry/android/monolithic/sdk/impl/xp;[Lcom/flurry/android/monolithic/sdk/impl/xp;)V

    .line 809
    :goto_0
    return-object v0

    .line 769
    :cond_0
    if-eqz p2, :cond_1

    .line 770
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xi;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a([Ljava/lang/annotation/Annotation;)Lcom/flurry/android/monolithic/sdk/impl/xp;

    move-result-object v1

    invoke-direct {v0, p1, v1, v4}, Lcom/flurry/android/monolithic/sdk/impl/xi;-><init>(Ljava/lang/reflect/Constructor;Lcom/flurry/android/monolithic/sdk/impl/xp;[Lcom/flurry/android/monolithic/sdk/impl/xp;)V

    goto :goto_0

    .line 772
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 773
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    .line 781
    array-length v2, v0

    if-eq v1, v2, :cond_3

    .line 785
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    .line 787
    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_2

    array-length v3, v0

    add-int/lit8 v3, v3, 0x2

    if-ne v1, v3, :cond_2

    .line 789
    array-length v2, v0

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [[Ljava/lang/annotation/Annotation;

    .line 790
    const/4 v3, 0x2

    array-length v4, v0

    invoke-static {v0, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 791
    invoke-virtual {p0, v2}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a([[Ljava/lang/annotation/Annotation;)[Lcom/flurry/android/monolithic/sdk/impl/xp;

    move-result-object v0

    .line 802
    :goto_1
    if-nez v0, :cond_4

    .line 803
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Internal error: constructor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has mismatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " parameters; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sets of annotations"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 794
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_5

    .line 797
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [[Ljava/lang/annotation/Annotation;

    .line 798
    const/4 v3, 0x1

    array-length v4, v0

    invoke-static {v0, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 799
    invoke-virtual {p0, v2}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a([[Ljava/lang/annotation/Annotation;)[Lcom/flurry/android/monolithic/sdk/impl/xp;

    move-result-object v0

    goto :goto_1

    .line 807
    :cond_3
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a([[Ljava/lang/annotation/Annotation;)[Lcom/flurry/android/monolithic/sdk/impl/xp;

    move-result-object v0

    .line 809
    :cond_4
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/xi;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a([Ljava/lang/annotation/Annotation;)Lcom/flurry/android/monolithic/sdk/impl/xp;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/xi;-><init>(Ljava/lang/reflect/Constructor;Lcom/flurry/android/monolithic/sdk/impl/xp;[Lcom/flurry/android/monolithic/sdk/impl/xp;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    move-object v2, v0

    move-object v0, v4

    goto :goto_1
.end method

.method protected a(Ljava/lang/reflect/Field;)Lcom/flurry/android/monolithic/sdk/impl/xj;
    .locals 2

    .prologue
    .line 824
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->c:Lcom/flurry/android/monolithic/sdk/impl/py;

    if-nez v0, :cond_0

    .line 825
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xj;

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/xh;->o()Lcom/flurry/android/monolithic/sdk/impl/xp;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/xj;-><init>(Ljava/lang/reflect/Field;Lcom/flurry/android/monolithic/sdk/impl/xp;)V

    .line 827
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xj;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a([Ljava/lang/annotation/Annotation;)Lcom/flurry/android/monolithic/sdk/impl/xp;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/xj;-><init>(Ljava/lang/reflect/Field;Lcom/flurry/android/monolithic/sdk/impl/xp;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/xl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/xl;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->j:Lcom/flurry/android/monolithic/sdk/impl/xm;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/xm;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/xl;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/reflect/Method;)Lcom/flurry/android/monolithic/sdk/impl/xl;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 758
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->c:Lcom/flurry/android/monolithic/sdk/impl/py;

    if-nez v0, :cond_0

    .line 759
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xl;

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/xh;->o()Lcom/flurry/android/monolithic/sdk/impl/xp;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/xl;-><init>(Ljava/lang/reflect/Method;Lcom/flurry/android/monolithic/sdk/impl/xp;[Lcom/flurry/android/monolithic/sdk/impl/xp;)V

    .line 761
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xl;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a([Ljava/lang/annotation/Annotation;)Lcom/flurry/android/monolithic/sdk/impl/xp;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/xl;-><init>(Ljava/lang/reflect/Method;Lcom/flurry/android/monolithic/sdk/impl/xp;[Lcom/flurry/android/monolithic/sdk/impl/xp;)V

    goto :goto_0
.end method

.method protected a([Ljava/lang/annotation/Annotation;)Lcom/flurry/android/monolithic/sdk/impl/xp;
    .locals 5

    .prologue
    .line 842
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xp;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/xp;-><init>()V

    .line 843
    if-eqz p1, :cond_1

    .line 844
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 845
    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->c:Lcom/flurry/android/monolithic/sdk/impl/py;

    invoke-virtual {v4, v3}, Lcom/flurry/android/monolithic/sdk/impl/py;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 846
    invoke-virtual {v0, v3}, Lcom/flurry/android/monolithic/sdk/impl/xp;->b(Ljava/lang/annotation/Annotation;)V

    .line 844
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 850
    :cond_1
    return-object v0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->f:Lcom/flurry/android/monolithic/sdk/impl/xp;

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->f:Lcom/flurry/android/monolithic/sdk/impl/xp;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/xp;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic a()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/xh;->e()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/xp;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/xp;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 504
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->d:Lcom/flurry/android/monolithic/sdk/impl/qg;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->d:Lcom/flurry/android/monolithic/sdk/impl/qg;

    invoke-interface {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/qg;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Lcom/flurry/android/monolithic/sdk/impl/xp;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 507
    :cond_0
    return-void
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/xp;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/xp;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 512
    if-nez p3, :cond_1

    .line 535
    :cond_0
    return-void

    .line 516
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    move v2, v6

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 517
    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->c:Lcom/flurry/android/monolithic/sdk/impl/py;

    invoke-virtual {v4, v3}, Lcom/flurry/android/monolithic/sdk/impl/py;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 518
    invoke-virtual {p1, v3}, Lcom/flurry/android/monolithic/sdk/impl/xp;->a(Ljava/lang/annotation/Annotation;)V

    .line 516
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 528
    :cond_3
    invoke-static {p3, p2}, Lcom/flurry/android/monolithic/sdk/impl/adz;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 529
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v2, v0

    move v3, v6

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 530
    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->c:Lcom/flurry/android/monolithic/sdk/impl/py;

    invoke-virtual {v5, v4}, Lcom/flurry/android/monolithic/sdk/impl/py;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 531
    invoke-virtual {p1, v4}, Lcom/flurry/android/monolithic/sdk/impl/xp;->a(Ljava/lang/annotation/Annotation;)V

    .line 529
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/xz;)V
    .locals 8

    .prologue
    const-class v7, Ljava/lang/Object;

    .line 405
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xm;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/xm;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->j:Lcom/flurry/android/monolithic/sdk/impl/xm;

    .line 406
    new-instance v5, Lcom/flurry/android/monolithic/sdk/impl/xm;

    invoke-direct {v5}, Lcom/flurry/android/monolithic/sdk/impl/xm;-><init>()V

    .line 408
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->a:Ljava/lang/Class;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->j:Lcom/flurry/android/monolithic/sdk/impl/xm;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->e:Ljava/lang/Class;

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/xz;Lcom/flurry/android/monolithic/sdk/impl/xm;Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/xm;)V

    .line 411
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 412
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->d:Lcom/flurry/android/monolithic/sdk/impl/qg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v4, v0

    .line 413
    :goto_1
    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->j:Lcom/flurry/android/monolithic/sdk/impl/xm;

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/xz;Lcom/flurry/android/monolithic/sdk/impl/xm;Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/xm;)V

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->d:Lcom/flurry/android/monolithic/sdk/impl/qg;

    invoke-interface {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qg;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->d:Lcom/flurry/android/monolithic/sdk/impl/qg;

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->d:Lcom/flurry/android/monolithic/sdk/impl/qg;

    const-class v1, Ljava/lang/Object;

    invoke-interface {v0, v7}, Lcom/flurry/android/monolithic/sdk/impl/qg;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_2

    .line 419
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->j:Lcom/flurry/android/monolithic/sdk/impl/xm;

    invoke-virtual {p0, p1, v1, v0, v5}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Lcom/flurry/android/monolithic/sdk/impl/xz;Lcom/flurry/android/monolithic/sdk/impl/xm;Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/xm;)V

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->c:Lcom/flurry/android/monolithic/sdk/impl/py;

    if-eqz v0, :cond_4

    .line 430
    invoke-virtual {v5}, Lcom/flurry/android/monolithic/sdk/impl/xm;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 431
    invoke-virtual {v5}, Lcom/flurry/android/monolithic/sdk/impl/xm;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 432
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 433
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/xl;

    .line 435
    :try_start_0
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/xl;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/xl;->m()[Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 436
    if-eqz v2, :cond_3

    .line 437
    invoke-virtual {p0, v2}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Ljava/lang/reflect/Method;)Lcom/flurry/android/monolithic/sdk/impl/xl;

    move-result-object v2

    .line 438
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/xl;->e()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Ljava/lang/reflect/Method;Lcom/flurry/android/monolithic/sdk/impl/xl;Z)V

    .line 439
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->j:Lcom/flurry/android/monolithic/sdk/impl/xm;

    invoke-virtual {v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/xm;->a(Lcom/flurry/android/monolithic/sdk/impl/xl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 441
    :catch_0
    move-exception v0

    goto :goto_2

    .line 445
    :cond_4
    return-void
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/xz;Lcom/flurry/android/monolithic/sdk/impl/xm;Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/xm;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/xz;",
            "Lcom/flurry/android/monolithic/sdk/impl/xm;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/xm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 656
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 657
    invoke-virtual {p0, v3, p1}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Ljava/lang/reflect/Method;Lcom/flurry/android/monolithic/sdk/impl/xz;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 656
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 660
    :cond_0
    invoke-virtual {p2, v3}, Lcom/flurry/android/monolithic/sdk/impl/xm;->b(Ljava/lang/reflect/Method;)Lcom/flurry/android/monolithic/sdk/impl/xl;

    move-result-object v4

    .line 665
    if-eqz v4, :cond_1

    .line 666
    invoke-virtual {p0, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Ljava/lang/reflect/Method;Lcom/flurry/android/monolithic/sdk/impl/xl;)V

    goto :goto_1

    .line 672
    :cond_1
    invoke-virtual {p0, v3}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Ljava/lang/reflect/Method;)Lcom/flurry/android/monolithic/sdk/impl/xl;

    move-result-object v3

    invoke-virtual {p4, v3}, Lcom/flurry/android/monolithic/sdk/impl/xm;->a(Lcom/flurry/android/monolithic/sdk/impl/xl;)V

    goto :goto_1

    .line 675
    :cond_2
    return-void
.end method

.method protected a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/xz;Lcom/flurry/android/monolithic/sdk/impl/xm;Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/xm;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/xz;",
            "Lcom/flurry/android/monolithic/sdk/impl/xm;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/xm;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 612
    if-eqz p4, :cond_0

    .line 613
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Lcom/flurry/android/monolithic/sdk/impl/xz;Lcom/flurry/android/monolithic/sdk/impl/xm;Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/xm;)V

    .line 616
    :cond_0
    if-nez p1, :cond_2

    .line 651
    :cond_1
    return-void

    .line 620
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    move v2, v6

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 621
    invoke-virtual {p0, v3, p2}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Ljava/lang/reflect/Method;Lcom/flurry/android/monolithic/sdk/impl/xz;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 620
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 624
    :cond_4
    invoke-virtual {p3, v3}, Lcom/flurry/android/monolithic/sdk/impl/xm;->b(Ljava/lang/reflect/Method;)Lcom/flurry/android/monolithic/sdk/impl/xl;

    move-result-object v4

    .line 625
    if-nez v4, :cond_5

    .line 626
    invoke-virtual {p0, v3}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Ljava/lang/reflect/Method;)Lcom/flurry/android/monolithic/sdk/impl/xl;

    move-result-object v4

    .line 627
    invoke-virtual {p3, v4}, Lcom/flurry/android/monolithic/sdk/impl/xm;->a(Lcom/flurry/android/monolithic/sdk/impl/xl;)V

    .line 629
    invoke-virtual {p5, v3}, Lcom/flurry/android/monolithic/sdk/impl/xm;->a(Ljava/lang/reflect/Method;)Lcom/flurry/android/monolithic/sdk/impl/xl;

    move-result-object v3

    .line 630
    if-eqz v3, :cond_3

    .line 631
    invoke-virtual {v3}, Lcom/flurry/android/monolithic/sdk/impl/xl;->e()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {p0, v3, v4, v6}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Ljava/lang/reflect/Method;Lcom/flurry/android/monolithic/sdk/impl/xl;Z)V

    goto :goto_1

    .line 637
    :cond_5
    invoke-virtual {p0, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Ljava/lang/reflect/Method;Lcom/flurry/android/monolithic/sdk/impl/xl;)V

    .line 646
    invoke-virtual {v4}, Lcom/flurry/android/monolithic/sdk/impl/xl;->h()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_3

    .line 647
    invoke-virtual {v4, v3}, Lcom/flurry/android/monolithic/sdk/impl/xl;->a(Ljava/lang/reflect/Method;)Lcom/flurry/android/monolithic/sdk/impl/xl;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/flurry/android/monolithic/sdk/impl/xm;->a(Lcom/flurry/android/monolithic/sdk/impl/xl;)V

    goto :goto_1
.end method

.method protected a(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/monolithic/sdk/impl/xj;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 726
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    move v3, v9

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 730
    invoke-direct {p0, v4}, Lcom/flurry/android/monolithic/sdk/impl/xh;->b(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 726
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 733
    :cond_1
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 735
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/xj;

    .line 736
    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    array-length v5, v4

    move v6, v9

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 738
    iget-object v8, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->c:Lcom/flurry/android/monolithic/sdk/impl/py;

    invoke-virtual {v8, v7}, Lcom/flurry/android/monolithic/sdk/impl/py;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 739
    invoke-virtual {v0, v7}, Lcom/flurry/android/monolithic/sdk/impl/xj;->a(Ljava/lang/annotation/Annotation;)V

    .line 737
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 744
    :cond_3
    return-void
.end method

.method protected a(Ljava/lang/reflect/Constructor;Lcom/flurry/android/monolithic/sdk/impl/xi;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/xi;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 918
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    move v2, v7

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 919
    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->c:Lcom/flurry/android/monolithic/sdk/impl/py;

    invoke-virtual {v4, v3}, Lcom/flurry/android/monolithic/sdk/impl/py;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 920
    invoke-virtual {p2, v3}, Lcom/flurry/android/monolithic/sdk/impl/xi;->a(Ljava/lang/annotation/Annotation;)V

    .line 918
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 923
    :cond_1
    if-eqz p3, :cond_3

    .line 924
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 925
    array-length v1, v0

    move v2, v7

    :goto_1
    if-ge v2, v1, :cond_3

    .line 926
    aget-object v3, v0, v2

    array-length v4, v3

    move v5, v7

    :goto_2
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 927
    invoke-virtual {p2, v2, v6}, Lcom/flurry/android/monolithic/sdk/impl/xi;->a(ILjava/lang/annotation/Annotation;)V

    .line 926
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 925
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 931
    :cond_3
    return-void
.end method

.method protected a(Ljava/lang/reflect/Method;Lcom/flurry/android/monolithic/sdk/impl/xl;)V
    .locals 5

    .prologue
    .line 961
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 962
    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->c:Lcom/flurry/android/monolithic/sdk/impl/py;

    invoke-virtual {v4, v3}, Lcom/flurry/android/monolithic/sdk/impl/py;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 963
    invoke-virtual {p2, v3}, Lcom/flurry/android/monolithic/sdk/impl/xl;->b(Ljava/lang/annotation/Annotation;)V

    .line 961
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 966
    :cond_1
    return-void
.end method

.method protected a(Ljava/lang/reflect/Method;Lcom/flurry/android/monolithic/sdk/impl/xl;Z)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 940
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    move v2, v7

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 941
    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->c:Lcom/flurry/android/monolithic/sdk/impl/py;

    invoke-virtual {v4, v3}, Lcom/flurry/android/monolithic/sdk/impl/py;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 942
    invoke-virtual {p2, v3}, Lcom/flurry/android/monolithic/sdk/impl/xl;->a(Ljava/lang/annotation/Annotation;)V

    .line 940
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 945
    :cond_1
    if-eqz p3, :cond_3

    .line 946
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 947
    array-length v1, v0

    move v2, v7

    :goto_1
    if-ge v2, v1, :cond_3

    .line 948
    aget-object v3, v0, v2

    array-length v4, v3

    move v5, v7

    :goto_2
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 949
    invoke-virtual {p2, v2, v6}, Lcom/flurry/android/monolithic/sdk/impl/xl;->a(ILjava/lang/annotation/Annotation;)V

    .line 948
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 947
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 953
    :cond_3
    return-void
.end method

.method protected a(Ljava/util/Map;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/monolithic/sdk/impl/xj;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 690
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 691
    if-eqz v0, :cond_2

    .line 696
    invoke-virtual {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Ljava/util/Map;Ljava/lang/Class;)V

    .line 697
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 699
    invoke-direct {p0, v3}, Lcom/flurry/android/monolithic/sdk/impl/xh;->b(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 697
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 707
    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Ljava/lang/reflect/Field;)Lcom/flurry/android/monolithic/sdk/impl/xj;

    move-result-object v3

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 710
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->d:Lcom/flurry/android/monolithic/sdk/impl/qg;

    if-eqz v0, :cond_2

    .line 711
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->d:Lcom/flurry/android/monolithic/sdk/impl/qg;

    invoke-interface {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/qg;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 712
    if-eqz v0, :cond_2

    .line 713
    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 717
    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 317
    iput-object v8, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->h:Ljava/util/List;

    .line 318
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 319
    array-length v1, v0

    move v2, v7

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 320
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_1

    .line 321
    invoke-virtual {p0, v3, v9}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Ljava/lang/reflect/Constructor;Z)Lcom/flurry/android/monolithic/sdk/impl/xi;

    move-result-object v3

    iput-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->g:Lcom/flurry/android/monolithic/sdk/impl/xi;

    .line 319
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    :cond_1
    if-eqz p1, :cond_0

    .line 324
    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->h:Ljava/util/List;

    if-nez v4, :cond_2

    .line 325
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    array-length v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->h:Ljava/util/List;

    .line 327
    :cond_2
    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->h:Ljava/util/List;

    invoke-virtual {p0, v3, v7}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Ljava/lang/reflect/Constructor;Z)Lcom/flurry/android/monolithic/sdk/impl/xi;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 332
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->e:Ljava/lang/Class;

    if-eqz v0, :cond_5

    .line 333
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->g:Lcom/flurry/android/monolithic/sdk/impl/xi;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->h:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 334
    :cond_4
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->e:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/xh;->c(Ljava/lang/Class;)V

    .line 343
    :cond_5
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->c:Lcom/flurry/android/monolithic/sdk/impl/py;

    if-eqz v0, :cond_7

    .line 344
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->g:Lcom/flurry/android/monolithic/sdk/impl/xi;

    if-eqz v0, :cond_6

    .line 345
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->c:Lcom/flurry/android/monolithic/sdk/impl/py;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->g:Lcom/flurry/android/monolithic/sdk/impl/xi;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/py;->a(Lcom/flurry/android/monolithic/sdk/impl/xi;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 346
    iput-object v8, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->g:Lcom/flurry/android/monolithic/sdk/impl/xi;

    .line 349
    :cond_6
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->h:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 351
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_7

    .line 352
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->c:Lcom/flurry/android/monolithic/sdk/impl/py;

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/xi;

    invoke-virtual {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/py;->a(Lcom/flurry/android/monolithic/sdk/impl/xi;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 353
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    goto :goto_2

    .line 359
    :cond_7
    iput-object v8, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->i:Ljava/util/List;

    .line 361
    if-eqz p1, :cond_d

    .line 363
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    move v2, v7

    :goto_3
    if-ge v2, v1, :cond_b

    aget-object v3, v0, v2

    .line 364
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 363
    :cond_8
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 367
    :cond_9
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    .line 369
    if-lt v4, v9, :cond_8

    .line 372
    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->i:Ljava/util/List;

    if-nez v4, :cond_a

    .line 373
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->i:Ljava/util/List;

    .line 375
    :cond_a
    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->i:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/flurry/android/monolithic/sdk/impl/xh;->b(Ljava/lang/reflect/Method;)Lcom/flurry/android/monolithic/sdk/impl/xl;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 378
    :cond_b
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->e:Ljava/lang/Class;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->i:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 379
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->e:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/xh;->d(Ljava/lang/Class;)V

    .line 382
    :cond_c
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->c:Lcom/flurry/android/monolithic/sdk/impl/py;

    if-eqz v0, :cond_d

    .line 383
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->i:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 385
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_5
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_d

    .line 386
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->c:Lcom/flurry/android/monolithic/sdk/impl/py;

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/xl;

    invoke-virtual {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/py;->a(Lcom/flurry/android/monolithic/sdk/impl/xl;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 387
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    goto :goto_5

    .line 393
    :cond_d
    return-void

    :cond_e
    move v0, v1

    goto :goto_5

    :cond_f
    move v0, v1

    goto/16 :goto_2
.end method

.method protected a(Ljava/lang/reflect/Method;Lcom/flurry/android/monolithic/sdk/impl/xz;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 876
    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/flurry/android/monolithic/sdk/impl/xz;->a(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 886
    :goto_0
    return v0

    .line 883
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    .line 884
    goto :goto_0

    .line 886
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected a([[Ljava/lang/annotation/Annotation;)[Lcom/flurry/android/monolithic/sdk/impl/xp;
    .locals 4

    .prologue
    .line 832
    array-length v0, p1

    .line 833
    new-array v1, v0, [Lcom/flurry/android/monolithic/sdk/impl/xp;

    .line 834
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 835
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a([Ljava/lang/annotation/Annotation;)Lcom/flurry/android/monolithic/sdk/impl/xp;

    move-result-object v3

    aput-object v3, v1, v2

    .line 834
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 837
    :cond_0
    return-object v1
.end method

.method protected b(Ljava/lang/reflect/Method;)Lcom/flurry/android/monolithic/sdk/impl/xl;
    .locals 3

    .prologue
    .line 815
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->c:Lcom/flurry/android/monolithic/sdk/impl/py;

    if-nez v0, :cond_0

    .line 816
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xl;

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/xh;->o()Lcom/flurry/android/monolithic/sdk/impl/xp;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    invoke-direct {p0, v2}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(I)[Lcom/flurry/android/monolithic/sdk/impl/xp;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/xl;-><init>(Ljava/lang/reflect/Method;Lcom/flurry/android/monolithic/sdk/impl/xp;[Lcom/flurry/android/monolithic/sdk/impl/xp;)V

    .line 818
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xl;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a([Ljava/lang/annotation/Annotation;)Lcom/flurry/android/monolithic/sdk/impl/xp;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a([[Ljava/lang/annotation/Annotation;)[Lcom/flurry/android/monolithic/sdk/impl/xp;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/xl;-><init>(Ljava/lang/reflect/Method;Lcom/flurry/android/monolithic/sdk/impl/xp;[Lcom/flurry/android/monolithic/sdk/impl/xp;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->a:Ljava/lang/Class;

    return-object v0
.end method

.method protected c(Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 545
    const/4 v0, 0x0

    .line 546
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->h:Ljava/util/List;

    if-nez v1, :cond_1

    move v1, v9

    .line 547
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    array-length v3, v2

    move v4, v9

    :goto_1
    if-ge v4, v3, :cond_6

    aget-object v5, v2, v4

    .line 548
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_2

    .line 549
    iget-object v6, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->g:Lcom/flurry/android/monolithic/sdk/impl/xi;

    if-eqz v6, :cond_0

    .line 550
    iget-object v6, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->g:Lcom/flurry/android/monolithic/sdk/impl/xi;

    invoke-virtual {p0, v5, v6, v9}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Ljava/lang/reflect/Constructor;Lcom/flurry/android/monolithic/sdk/impl/xi;Z)V

    .line 547
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 546
    :cond_1
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 553
    :cond_2
    if-nez v0, :cond_3

    .line 554
    new-array v6, v1, [Lcom/flurry/android/monolithic/sdk/impl/xy;

    move v7, v9

    .line 555
    :goto_3
    if-ge v7, v1, :cond_4

    .line 556
    new-instance v8, Lcom/flurry/android/monolithic/sdk/impl/xy;

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->h:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/xi;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/xi;->e()Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/flurry/android/monolithic/sdk/impl/xy;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v8, v6, v7

    .line 555
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_3

    :cond_3
    move-object v6, v0

    .line 559
    :cond_4
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xy;

    invoke-direct {v0, v5}, Lcom/flurry/android/monolithic/sdk/impl/xy;-><init>(Ljava/lang/reflect/Constructor;)V

    move v7, v9

    .line 561
    :goto_4
    if-ge v7, v1, :cond_7

    .line 562
    aget-object v8, v6, v7

    invoke-virtual {v0, v8}, Lcom/flurry/android/monolithic/sdk/impl/xy;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 561
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 565
    :cond_5
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->h:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/xi;

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v0, v7}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Ljava/lang/reflect/Constructor;Lcom/flurry/android/monolithic/sdk/impl/xi;Z)V

    move-object v0, v6

    .line 566
    goto :goto_2

    .line 570
    :cond_6
    return-void

    :cond_7
    move-object v0, v6

    goto :goto_2
.end method

.method public d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->a:Ljava/lang/Class;

    return-object v0
.end method

.method protected d(Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 574
    const/4 v0, 0x0

    .line 575
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 577
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    move v4, v9

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 578
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 577
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 581
    :cond_1
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-eqz v6, :cond_0

    .line 584
    if-nez v0, :cond_2

    .line 585
    new-array v6, v1, [Lcom/flurry/android/monolithic/sdk/impl/xy;

    move v7, v9

    .line 586
    :goto_2
    if-ge v7, v1, :cond_3

    .line 587
    new-instance v8, Lcom/flurry/android/monolithic/sdk/impl/xy;

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->i:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/xl;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/xl;->e()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/flurry/android/monolithic/sdk/impl/xy;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v8, v6, v7

    .line 586
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2

    :cond_2
    move-object v6, v0

    .line 590
    :cond_3
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xy;

    invoke-direct {v0, v5}, Lcom/flurry/android/monolithic/sdk/impl/xy;-><init>(Ljava/lang/reflect/Method;)V

    move v7, v9

    .line 591
    :goto_3
    if-ge v7, v1, :cond_6

    .line 592
    aget-object v8, v6, v7

    invoke-virtual {v0, v8}, Lcom/flurry/android/monolithic/sdk/impl/xy;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 591
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 595
    :cond_4
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->i:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/xl;

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v0, v7}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Ljava/lang/reflect/Method;Lcom/flurry/android/monolithic/sdk/impl/xl;Z)V

    move-object v0, v6

    .line 596
    goto :goto_1

    .line 599
    :cond_5
    return-void

    :cond_6
    move-object v0, v6

    goto :goto_1
.end method

.method public e()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public f()Lcom/flurry/android/monolithic/sdk/impl/ado;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->f:Lcom/flurry/android/monolithic/sdk/impl/xp;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->f:Lcom/flurry/android/monolithic/sdk/impl/xp;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/xp;->a()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lcom/flurry/android/monolithic/sdk/impl/xi;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->g:Lcom/flurry/android/monolithic/sdk/impl/xi;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/xi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->h:Ljava/util/List;

    if-nez v0, :cond_0

    .line 209
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->h:Ljava/util/List;

    goto :goto_0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/xl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->i:Ljava/util/List;

    if-nez v0, :cond_0

    .line 217
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->i:Ljava/util/List;

    goto :goto_0
.end method

.method public k()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/xl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->j:Lcom/flurry/android/monolithic/sdk/impl/xm;

    return-object v0
.end method

.method public l()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/xj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->k:Ljava/util/List;

    if-nez v0, :cond_0

    .line 244
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 246
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->k:Ljava/util/List;

    goto :goto_0
.end method

.method public m()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 265
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xp;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/xp;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->f:Lcom/flurry/android/monolithic/sdk/impl/xp;

    .line 267
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->c:Lcom/flurry/android/monolithic/sdk/impl/py;

    if-nez v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->e:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->f:Lcom/flurry/android/monolithic/sdk/impl/xp;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->a:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->e:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Lcom/flurry/android/monolithic/sdk/impl/xp;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    move v2, v6

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 277
    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->c:Lcom/flurry/android/monolithic/sdk/impl/py;

    invoke-virtual {v4, v3}, Lcom/flurry/android/monolithic/sdk/impl/py;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 278
    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->f:Lcom/flurry/android/monolithic/sdk/impl/xp;

    invoke-virtual {v4, v3}, Lcom/flurry/android/monolithic/sdk/impl/xp;->a(Ljava/lang/annotation/Annotation;)V

    .line 276
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 285
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->f:Lcom/flurry/android/monolithic/sdk/impl/xp;

    invoke-virtual {p0, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Lcom/flurry/android/monolithic/sdk/impl/xp;Ljava/lang/Class;)V

    .line 286
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v2, v0

    move v3, v6

    :goto_2
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 287
    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->c:Lcom/flurry/android/monolithic/sdk/impl/py;

    invoke-virtual {v5, v4}, Lcom/flurry/android/monolithic/sdk/impl/py;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 288
    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->f:Lcom/flurry/android/monolithic/sdk/impl/xp;

    invoke-virtual {v5, v4}, Lcom/flurry/android/monolithic/sdk/impl/xp;->a(Ljava/lang/annotation/Annotation;)V

    .line 286
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 301
    :cond_6
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->f:Lcom/flurry/android/monolithic/sdk/impl/xp;

    const-class v1, Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Lcom/flurry/android/monolithic/sdk/impl/xp;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public n()V
    .locals 3

    .prologue
    .line 456
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 457
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->a:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/xh;->a(Ljava/util/Map;Ljava/lang/Class;)V

    .line 458
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->k:Ljava/util/List;

    .line 464
    :goto_0
    return-void

    .line 461
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->k:Ljava/util/List;

    .line 462
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->k:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[AnnotedClass "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/xh;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
