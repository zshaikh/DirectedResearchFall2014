.class public Lcom/dolphin/browser/share/d;
.super Landroid/widget/ListView;
.source "FriendsListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Lcom/dolphin/browser/share/c;

.field private b:Lcom/dolphin/browser/share/f;

.field private c:Ljava/util/Observer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/share/r;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Lcom/dolphin/browser/share/e;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/e;-><init>(Lcom/dolphin/browser/share/d;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/d;->c:Ljava/util/Observer;

    .line 23
    new-instance v0, Lcom/dolphin/browser/share/c;

    invoke-direct {v0, p1, p2}, Lcom/dolphin/browser/share/c;-><init>(Landroid/content/Context;Lcom/dolphin/browser/share/r;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/d;->a:Lcom/dolphin/browser/share/c;

    .line 24
    iget-object v0, p0, Lcom/dolphin/browser/share/d;->a:Lcom/dolphin/browser/share/c;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/d;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 25
    invoke-virtual {p0, p0}, Lcom/dolphin/browser/share/d;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 26
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/share/d;->setFadingEdgeLength(I)V

    .line 27
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/d;->setSelector(I)V

    .line 28
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0202a3

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/d;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 30
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/share/d;->setVerticalScrollBarEnabled(Z)V

    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/share/d;->c:Ljava/util/Observer;

    invoke-virtual {p2, v0}, Lcom/dolphin/browser/share/r;->addObserver(Ljava/util/Observer;)V

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/share/d;)Lcom/dolphin/browser/share/c;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/dolphin/browser/share/d;->a:Lcom/dolphin/browser/share/c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/share/f;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/dolphin/browser/share/d;->b:Lcom/dolphin/browser/share/f;

    .line 53
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/share/d;->a:Lcom/dolphin/browser/share/c;

    invoke-virtual {v0, p3}, Lcom/dolphin/browser/share/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/q/a;

    .line 46
    iget-object v1, p0, Lcom/dolphin/browser/share/d;->b:Lcom/dolphin/browser/share/f;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/dolphin/browser/share/d;->b:Lcom/dolphin/browser/share/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/dolphin/browser/share/f;->a(Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void
.end method
