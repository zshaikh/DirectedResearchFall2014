.class public Lcom/twitter/android/widget/Navbar;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Ljava/util/HashMap;

.field private b:Lcom/twitter/android/widget/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/Navbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f010044

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/Navbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/widget/Navbar;->a:Ljava/util/HashMap;

    return-void
.end method

.method private a(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/widget/Navbar;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/widget/Navbar;->a:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final varargs a(I[I)V
    .locals 4

    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p2, v0

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v2}, Lcom/twitter/android/widget/Navbar;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/twitter/android/widget/m;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/widget/Navbar;->b:Lcom/twitter/android/widget/m;

    return-void
.end method

.method public final b(II)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/widget/Navbar;->a:Ljava/util/HashMap;

    const v1, 0x7f07004a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f02011d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/widget/Navbar;->b:Lcom/twitter/android/widget/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/Navbar;->b:Lcom/twitter/android/widget/m;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/twitter/android/widget/m;->b(I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f070069

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/Navbar;->a(I)V

    const v0, 0x7f07004a

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/Navbar;->a(I)V

    return-void
.end method
