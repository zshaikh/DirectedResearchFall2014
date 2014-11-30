.class public Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "Inbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appoxee/activities/Inbox$InboxCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field messageDate:Landroid/widget/TextView;

.field messageDescription:Landroid/widget/TextView;

.field messageLayout:Landroid/widget/RelativeLayout;

.field messageTitle:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/appoxee/activities/Inbox$InboxCursorAdapter;


# direct methods
.method public constructor <init>(Lcom/appoxee/activities/Inbox$InboxCursorAdapter;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/appoxee/activities/Inbox$InboxCursorAdapter$ViewHolder;->this$1:Lcom/appoxee/activities/Inbox$InboxCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
