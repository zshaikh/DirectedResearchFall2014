.class Lcom/dolphin/browser/share/e;
.super Ljava/lang/Object;
.source "FriendsListView.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/d;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/d;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/dolphin/browser/share/e;->a:Lcom/dolphin/browser/share/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/share/e;->a:Lcom/dolphin/browser/share/d;

    invoke-static {v0}, Lcom/dolphin/browser/share/d;->a(Lcom/dolphin/browser/share/d;)Lcom/dolphin/browser/share/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/share/c;->a()V

    .line 39
    return-void
.end method
