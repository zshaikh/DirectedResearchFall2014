.class Ldolphin/preference/x;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ldolphin/preference/x;",
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
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/preference/w;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ldolphin/preference/x;-><init>()V

    return-void
.end method

.method static synthetic a(Ldolphin/preference/x;I)I
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Ldolphin/preference/x;->a:I

    return p1
.end method

.method static synthetic a(Ldolphin/preference/x;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Ldolphin/preference/x;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Ldolphin/preference/x;I)I
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Ldolphin/preference/x;->b:I

    return p1
.end method


# virtual methods
.method public a(Ldolphin/preference/x;)I
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Ldolphin/preference/x;->c:Ljava/lang/String;

    iget-object v1, p1, Ldolphin/preference/x;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 99
    if-nez v0, :cond_0

    .line 100
    iget v0, p0, Ldolphin/preference/x;->a:I

    iget v1, p1, Ldolphin/preference/x;->a:I

    if-ne v0, v1, :cond_2

    .line 101
    iget v0, p0, Ldolphin/preference/x;->b:I

    iget v1, p1, Ldolphin/preference/x;->b:I

    if-ne v0, v1, :cond_1

    .line 102
    const/4 v0, 0x0

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    iget v0, p0, Ldolphin/preference/x;->b:I

    iget v1, p1, Ldolphin/preference/x;->b:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 107
    :cond_2
    iget v0, p0, Ldolphin/preference/x;->a:I

    iget v1, p1, Ldolphin/preference/x;->a:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 92
    check-cast p1, Ldolphin/preference/x;

    invoke-virtual {p0, p1}, Ldolphin/preference/x;->a(Ldolphin/preference/x;)I

    move-result v0

    return v0
.end method
