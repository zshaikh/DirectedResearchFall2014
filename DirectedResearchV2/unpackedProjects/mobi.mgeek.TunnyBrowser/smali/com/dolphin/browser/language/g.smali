.class Lcom/dolphin/browser/language/g;
.super Ljava/lang/Object;
.source "LanguageSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/language/LanguageSettingsActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/language/LanguageSettingsActivity;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/dolphin/browser/language/g;->a:Lcom/dolphin/browser/language/LanguageSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/language/g;->a:Lcom/dolphin/browser/language/LanguageSettingsActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/language/LanguageSettingsActivity;->onBackPressed()V

    .line 66
    return-void
.end method
