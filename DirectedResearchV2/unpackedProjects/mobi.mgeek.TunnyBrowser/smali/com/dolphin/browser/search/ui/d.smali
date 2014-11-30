.class Lcom/dolphin/browser/search/ui/d;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/ui/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/ui/c;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/d;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 142
    invoke-static {}, Lcom/dolphin/browser/search/a/c;->a()Lcom/dolphin/browser/search/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/a/c;->e()Lcom/dolphin/browser/search/b/b;

    move-result-object v0

    .line 144
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/dolphin/browser/search/a/e;->a()Lcom/dolphin/browser/search/a/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/a/e;->e(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/d;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->a(Lcom/dolphin/browser/search/ui/c;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    :cond_0
    return-void
.end method
