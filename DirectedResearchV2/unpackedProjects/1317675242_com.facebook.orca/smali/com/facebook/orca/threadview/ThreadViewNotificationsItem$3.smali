.class Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$3;
.super Ljava/lang/Object;
.source "ThreadViewNotificationsItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$3;->b:Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;

    iput-object p2, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$3;->a:Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$3;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void
.end method
