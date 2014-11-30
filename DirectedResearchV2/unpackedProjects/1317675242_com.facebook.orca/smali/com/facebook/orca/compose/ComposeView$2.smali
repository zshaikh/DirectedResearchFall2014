.class Lcom/facebook/orca/compose/ComposeView$2;
.super Lcom/facebook/orca/push/PresenceManager$OnContactTypingStateChangedListener;
.source "ComposeView.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/compose/ComposeView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/compose/ComposeView;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeView$2;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-direct {p0}, Lcom/facebook/orca/push/PresenceManager$OnContactTypingStateChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView$2;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-static {v0, p1, p2}, Lcom/facebook/orca/compose/ComposeView;->a(Lcom/facebook/orca/compose/ComposeView;Ljava/lang/String;I)V

    .line 203
    return-void
.end method
