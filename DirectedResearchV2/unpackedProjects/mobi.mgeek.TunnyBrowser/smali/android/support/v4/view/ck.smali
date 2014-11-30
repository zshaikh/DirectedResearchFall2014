.class Landroid/support/v4/view/ck;
.super Landroid/database/DataSetObserver;
.source "ViewPager2.java"


# instance fields
.field final synthetic a:Landroid/support/v4/view/ViewPager2;


# direct methods
.method private constructor <init>(Landroid/support/v4/view/ViewPager2;)V
    .locals 0

    .prologue
    .line 990
    iput-object p1, p0, Landroid/support/v4/view/ck;->a:Landroid/support/v4/view/ViewPager2;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/ViewPager2;Landroid/support/v4/view/ch;)V
    .locals 0

    .prologue
    .line 990
    invoke-direct {p0, p1}, Landroid/support/v4/view/ck;-><init>(Landroid/support/v4/view/ViewPager2;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Landroid/support/v4/view/ViewPager2;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager2;->c()V

    .line 995
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Landroid/support/v4/view/ViewPager2;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager2;->c()V

    .line 1000
    return-void
.end method
