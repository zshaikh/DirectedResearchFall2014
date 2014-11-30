.class public Lcom/dolphin/browser/DolphinService/ui/az;
.super Landroid/widget/ArrayAdapter;
.source "EmailCompleteAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/dolphin/browser/DolphinService/ui/bb;

.field private d:I

.field private e:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030052

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0801b6

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/az;->b:Ljava/util/ArrayList;

    .line 31
    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/ui/az;->a:[Ljava/lang/String;

    .line 32
    const/16 v0, 0xa

    iput v0, p0, Lcom/dolphin/browser/DolphinService/ui/az;->d:I

    .line 33
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0071

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/az;->e:Landroid/graphics/drawable/Drawable;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/az;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/az;->b:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/az;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/az;->a:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/DolphinService/ui/az;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/dolphin/browser/DolphinService/ui/az;->d:I

    return v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/az;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/az;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/az;->c:Lcom/dolphin/browser/DolphinService/ui/bb;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/bb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/DolphinService/ui/bb;-><init>(Lcom/dolphin/browser/DolphinService/ui/az;Lcom/dolphin/browser/DolphinService/ui/ba;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/az;->c:Lcom/dolphin/browser/DolphinService/ui/bb;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/az;->c:Lcom/dolphin/browser/DolphinService/ui/bb;

    return-object v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/az;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 56
    instance-of v0, p3, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    move-object v0, p3

    .line 57
    check-cast v0, Landroid/widget/ListView;

    .line 58
    invoke-virtual {v0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/az;->e:Landroid/graphics/drawable/Drawable;

    if-eq v1, v2, :cond_0

    .line 59
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/az;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 60
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 63
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 64
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801b6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0182

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 66
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/az;->getCount()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/az;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02011c

    invoke-static {v0, v2, v4}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    .line 79
    :goto_0
    return-object v0

    .line 70
    :cond_1
    if-nez p1, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/az;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02011e

    invoke-static {v0, v2, v4}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    move-object v0, v1

    .line 79
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/az;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    .line 74
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/az;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02011b

    invoke-static {v0, v2, v4}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 77
    :cond_3
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/az;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02011d

    invoke-static {v0, v2, v4}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
