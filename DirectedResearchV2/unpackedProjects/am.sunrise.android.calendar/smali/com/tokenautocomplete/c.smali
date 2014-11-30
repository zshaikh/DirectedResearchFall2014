.class Lcom/tokenautocomplete/c;
.super Ljava/lang/Object;
.source "TokenCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tokenautocomplete/TokenCompleteTextView;


# direct methods
.method constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/tokenautocomplete/c;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/tokenautocomplete/c;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    iget-object v1, p0, Lcom/tokenautocomplete/c;->a:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->b(Z)V

    .line 1146
    return-void
.end method
