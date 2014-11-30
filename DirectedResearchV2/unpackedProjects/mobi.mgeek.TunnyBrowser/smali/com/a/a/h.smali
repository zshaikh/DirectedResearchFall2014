.class final Lcom/a/a/h;
.super Ljava/lang/Object;
.source "TrackMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/ContentValues;

.field private synthetic b:Lcom/a/a/g;


# direct methods
.method constructor <init>(Lcom/a/a/g;Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/a/a/h;->b:Lcom/a/a/g;

    iput-object p2, p0, Lcom/a/a/h;->a:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/a/a/h;->b:Lcom/a/a/g;

    iget-object v1, p0, Lcom/a/a/h;->a:Landroid/content/ContentValues;

    invoke-static {v0, v1}, Lcom/a/a/g;->a(Lcom/a/a/g;Landroid/content/ContentValues;)V

    .line 194
    return-void
.end method
