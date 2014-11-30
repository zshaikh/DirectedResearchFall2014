.class Lcom/mgeek/android/ui/n;
.super Ljava/lang/Object;
.source "DraggableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/mgeek/android/ui/DraggableListView;


# direct methods
.method constructor <init>(Lcom/mgeek/android/ui/DraggableListView;II)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/mgeek/android/ui/n;->c:Lcom/mgeek/android/ui/DraggableListView;

    iput p2, p0, Lcom/mgeek/android/ui/n;->a:I

    iput p3, p0, Lcom/mgeek/android/ui/n;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mgeek/android/ui/n;->c:Lcom/mgeek/android/ui/DraggableListView;

    iget v1, p0, Lcom/mgeek/android/ui/n;->a:I

    iget v2, p0, Lcom/mgeek/android/ui/n;->b:I

    invoke-static {v0, v1, v2}, Lcom/mgeek/android/ui/DraggableListView;->a(Lcom/mgeek/android/ui/DraggableListView;II)V

    .line 203
    return-void
.end method
