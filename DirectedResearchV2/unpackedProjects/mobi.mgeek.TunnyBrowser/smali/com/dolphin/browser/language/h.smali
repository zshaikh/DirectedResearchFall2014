.class Lcom/dolphin/browser/language/h;
.super Ljava/lang/Object;
.source "LanguageSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/language/LanguageSettingsActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/language/LanguageSettingsActivity;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/dolphin/browser/language/h;->a:Lcom/dolphin/browser/language/LanguageSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 83
    check-cast p2, Lcom/dolphin/browser/language/b;

    .line 84
    invoke-virtual {p2}, Lcom/dolphin/browser/language/b;->a()Lcom/dolphin/browser/language/a;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/dolphin/browser/language/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/dolphin/browser/language/h;->a:Lcom/dolphin/browser/language/LanguageSettingsActivity;

    invoke-virtual {v1}, Lcom/dolphin/browser/language/LanguageSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/bj;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/language/h;->a:Lcom/dolphin/browser/language/LanguageSettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/language/LanguageSettingsActivity;->setResult(I)V

    .line 90
    iget-object v0, p0, Lcom/dolphin/browser/language/h;->a:Lcom/dolphin/browser/language/LanguageSettingsActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/language/LanguageSettingsActivity;->finish()V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/language/h;->a:Lcom/dolphin/browser/language/LanguageSettingsActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/language/LanguageSettingsActivity;->setResult(I)V

    .line 95
    invoke-virtual {p2}, Lcom/dolphin/browser/language/b;->b()V

    goto :goto_0
.end method
