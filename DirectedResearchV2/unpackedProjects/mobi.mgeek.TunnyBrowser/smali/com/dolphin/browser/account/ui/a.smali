.class public Lcom/dolphin/browser/account/ui/a;
.super Landroid/widget/BaseExpandableListAdapter;
.source "AccountAdapter.java"


# static fields
.field private static final b:I


# instance fields
.field protected a:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/account/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->pixelToDip(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/account/ui/a;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Landroid/content/Context;)Lcom/dolphin/browser/DolphinService/Account/b;

    .line 33
    invoke-direct {p0}, Lcom/dolphin/browser/account/ui/a;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/account/ui/a;->c:Ljava/util/List;

    .line 34
    iput-object p1, p0, Lcom/dolphin/browser/account/ui/a;->a:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/account/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    new-instance v1, Lcom/dolphin/browser/account/c;

    invoke-direct {v1}, Lcom/dolphin/browser/account/c;-><init>()V

    .line 41
    new-instance v2, Lcom/dolphin/browser/account/a;

    sget-object v3, Lcom/dolphin/browser/account/d;->a:Lcom/dolphin/browser/account/d;

    invoke-direct {v2, v3}, Lcom/dolphin/browser/account/a;-><init>(Lcom/dolphin/browser/account/d;)V

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/account/c;->a(Lcom/dolphin/browser/account/a;)V

    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v1, Lcom/dolphin/browser/account/c;

    invoke-direct {v1}, Lcom/dolphin/browser/account/c;-><init>()V

    .line 45
    new-instance v2, Lcom/dolphin/browser/account/a;

    sget-object v3, Lcom/dolphin/browser/account/d;->b:Lcom/dolphin/browser/account/d;

    invoke-direct {v2, v3}, Lcom/dolphin/browser/account/a;-><init>(Lcom/dolphin/browser/account/d;)V

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/account/c;->a(Lcom/dolphin/browser/account/a;)V

    .line 46
    new-instance v2, Lcom/dolphin/browser/account/a;

    sget-object v3, Lcom/dolphin/browser/account/d;->c:Lcom/dolphin/browser/account/d;

    invoke-direct {v2, v3}, Lcom/dolphin/browser/account/a;-><init>(Lcom/dolphin/browser/account/d;)V

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/account/c;->a(Lcom/dolphin/browser/account/a;)V

    .line 47
    new-instance v2, Lcom/dolphin/browser/account/a;

    sget-object v3, Lcom/dolphin/browser/account/d;->d:Lcom/dolphin/browser/account/d;

    invoke-direct {v2, v3}, Lcom/dolphin/browser/account/a;-><init>(Lcom/dolphin/browser/account/d;)V

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/account/c;->a(Lcom/dolphin/browser/account/a;)V

    .line 48
    new-instance v2, Lcom/dolphin/browser/account/a;

    sget-object v3, Lcom/dolphin/browser/account/d;->e:Lcom/dolphin/browser/account/d;

    invoke-direct {v2, v3}, Lcom/dolphin/browser/account/a;-><init>(Lcom/dolphin/browser/account/d;)V

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/account/c;->a(Lcom/dolphin/browser/account/a;)V

    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-object v0
.end method


# virtual methods
.method public a(II)Lcom/dolphin/browser/account/a;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/account/ui/a;->a(I)Lcom/dolphin/browser/account/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/account/c;->a(I)Lcom/dolphin/browser/account/a;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/dolphin/browser/account/c;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/account/c;

    return-object v0
.end method

.method protected a(IILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/account/ui/a;->a(II)Lcom/dolphin/browser/account/a;

    move-result-object v0

    .line 131
    check-cast p3, Lcom/dolphin/browser/account/ui/b;

    invoke-virtual {p3, v0}, Lcom/dolphin/browser/account/ui/b;->a(Lcom/dolphin/browser/account/a;)V

    .line 132
    return-void
.end method

.method public synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/account/ui/a;->a(II)Lcom/dolphin/browser/account/a;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    .prologue
    .line 81
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 103
    if-nez p4, :cond_0

    .line 104
    new-instance p4, Lcom/dolphin/browser/account/ui/b;

    iget-object v0, p0, Lcom/dolphin/browser/account/ui/a;->a:Landroid/content/Context;

    invoke-direct {p4, v0}, Lcom/dolphin/browser/account/ui/b;-><init>(Landroid/content/Context;)V

    .line 108
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/account/ui/a;->getChildrenCount(I)I

    move-result v0

    .line 110
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 111
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020275

    .line 120
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/dolphin/browser/account/ui/a;->a(IILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 125
    return-object p4

    .line 112
    :cond_1
    if-nez p2, :cond_2

    .line 113
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020277

    goto :goto_0

    .line 114
    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_3

    .line 115
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020274

    goto :goto_0

    .line 117
    :cond_3
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020278

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/account/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/account/c;->a()I

    move-result v0

    return v0
.end method

.method public synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/account/ui/a;->a(I)Lcom/dolphin/browser/account/c;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/account/ui/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    .prologue
    .line 76
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    if-nez p3, :cond_0

    .line 93
    new-instance p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dolphin/browser/account/ui/a;->a:Landroid/content/Context;

    invoke-direct {p3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 94
    sget v0, Lcom/dolphin/browser/account/ui/a;->b:I

    invoke-virtual {p3, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 95
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a00f2

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 97
    :cond_0
    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public onGroupCollapsed(I)V
    .locals 0

    .prologue
    .line 141
    return-void
.end method
