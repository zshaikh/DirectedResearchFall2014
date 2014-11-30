.class Ldolphin/preference/g;
.super Ljava/lang/Object;
.source "ExpandablePreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ldolphin/preference/g;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/preference/f;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ldolphin/preference/g;-><init>()V

    return-void
.end method

.method static synthetic a(Ldolphin/preference/g;I)I
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Ldolphin/preference/g;->a:I

    return p1
.end method

.method static synthetic a(Ldolphin/preference/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Ldolphin/preference/g;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Ldolphin/preference/g;I)I
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Ldolphin/preference/g;->b:I

    return p1
.end method


# virtual methods
.method public a(Ldolphin/preference/g;)I
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Ldolphin/preference/g;->c:Ljava/lang/String;

    iget-object v1, p1, Ldolphin/preference/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 78
    if-nez v0, :cond_0

    .line 79
    iget v0, p0, Ldolphin/preference/g;->a:I

    iget v1, p1, Ldolphin/preference/g;->a:I

    if-ne v0, v1, :cond_2

    .line 80
    iget v0, p0, Ldolphin/preference/g;->b:I

    iget v1, p1, Ldolphin/preference/g;->b:I

    if-ne v0, v1, :cond_1

    .line 81
    const/4 v0, 0x0

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    iget v0, p0, Ldolphin/preference/g;->b:I

    iget v1, p1, Ldolphin/preference/g;->b:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 86
    :cond_2
    iget v0, p0, Ldolphin/preference/g;->a:I

    iget v1, p1, Ldolphin/preference/g;->a:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 71
    check-cast p1, Ldolphin/preference/g;

    invoke-virtual {p0, p1}, Ldolphin/preference/g;->a(Ldolphin/preference/g;)I

    move-result v0

    return v0
.end method
