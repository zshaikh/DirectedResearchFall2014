.class Lcom/dolphin/browser/vg/g;
.super Ljava/lang/Object;
.source "VoiceSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/vg/VoiceSettingsActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/vg/VoiceSettingsActivity;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/dolphin/browser/vg/g;->a:Lcom/dolphin/browser/vg/VoiceSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/dolphin/browser/vg/g;->a:Lcom/dolphin/browser/vg/VoiceSettingsActivity;

    iget-object v1, p0, Lcom/dolphin/browser/vg/g;->a:Lcom/dolphin/browser/vg/VoiceSettingsActivity;

    invoke-static {v0, v1}, Lcom/dolphin/browser/vg/VoiceSettingsActivity;->a(Lcom/dolphin/browser/vg/VoiceSettingsActivity;Landroid/content/Context;)V

    .line 198
    return-void
.end method
