.class public Ldolphin/preference/TextSizePreference;
.super Ldolphin/preference/ListPreference;
.source "TextSizePreference.java"


# instance fields
.field private final a:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ldolphin/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->b:Lmobi/mgeek/TunnyBrowser/R$array;

    const v1, 0x7f070037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/TextSizePreference;->a:[I

    .line 23
    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0, p1}, Ldolphin/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 28
    instance-of v0, p1, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 29
    check-cast p1, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    iget-object v0, p0, Ldolphin/preference/TextSizePreference;->a:[I

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a([I)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 31
    :cond_0
    return-void
.end method
