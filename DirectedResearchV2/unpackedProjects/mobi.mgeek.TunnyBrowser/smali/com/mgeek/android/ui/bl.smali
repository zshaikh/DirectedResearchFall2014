.class Lcom/mgeek/android/ui/bl;
.super Ljava/lang/Object;
.source "VerticalSearchGridView.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/b/b;

.field final synthetic b:Lcom/dolphin/browser/extensions/ThemeManager;

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Lcom/mgeek/android/ui/bk;


# direct methods
.method constructor <init>(Lcom/mgeek/android/ui/bk;Lcom/dolphin/browser/search/b/b;Lcom/dolphin/browser/extensions/ThemeManager;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/mgeek/android/ui/bl;->d:Lcom/mgeek/android/ui/bk;

    iput-object p2, p0, Lcom/mgeek/android/ui/bl;->a:Lcom/dolphin/browser/search/b/b;

    iput-object p3, p0, Lcom/mgeek/android/ui/bl;->b:Lcom/dolphin/browser/extensions/ThemeManager;

    iput-object p4, p0, Lcom/mgeek/android/ui/bl;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/mgeek/android/ui/bl;->a:Lcom/dolphin/browser/search/b/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mgeek/android/ui/bl;->a:Lcom/dolphin/browser/search/b/b;

    invoke-virtual {v1}, Lcom/dolphin/browser/search/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-static {}, Lcom/dolphin/browser/search/a/e;->a()Lcom/dolphin/browser/search/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/search/a/e;->e(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    .line 186
    iget-object v1, p0, Lcom/mgeek/android/ui/bl;->b:Lcom/dolphin/browser/extensions/ThemeManager;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 187
    iget-object v1, p0, Lcom/mgeek/android/ui/bl;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    :cond_0
    return-void
.end method
