.class Lcom/facebook/orca/prefs/NotificationEnabledPreference$1;
.super Ljava/lang/Object;
.source "NotificationEnabledPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/prefs/NotificationEnabledPreference;


# direct methods
.method constructor <init>(Lcom/facebook/orca/prefs/NotificationEnabledPreference;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference$1;->a:Lcom/facebook/orca/prefs/NotificationEnabledPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference$1;->a:Lcom/facebook/orca/prefs/NotificationEnabledPreference;

    invoke-static {v0, p1, p2}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->a(Lcom/facebook/orca/prefs/NotificationEnabledPreference;Landroid/content/DialogInterface;I)V

    .line 76
    return-void
.end method
