.class Ldolphin/preference/n;
.super Ljava/lang/Object;
.source "ListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ldolphin/preference/ListPreference;


# direct methods
.method constructor <init>(Ldolphin/preference/ListPreference;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Ldolphin/preference/n;->a:Ldolphin/preference/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Ldolphin/preference/n;->a:Ldolphin/preference/ListPreference;

    # setter for: Ldolphin/preference/ListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v0, p2}, Ldolphin/preference/ListPreference;->access$002(Ldolphin/preference/ListPreference;I)I

    .line 254
    iget-object v0, p0, Ldolphin/preference/n;->a:Ldolphin/preference/ListPreference;

    const/4 v1, -0x2

    invoke-virtual {v0, p1, v1}, Ldolphin/preference/ListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 255
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 256
    return-void
.end method
