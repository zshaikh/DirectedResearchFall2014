.class Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$1;
.super Ljava/lang/Object;
.source "ThreadViewNotificationsItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$1;->a:Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$1;->a:Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;

    invoke-static {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->a(Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;Landroid/view/View;)V

    .line 84
    return-void
.end method
