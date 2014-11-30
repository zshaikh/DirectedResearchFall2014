.class Lcom/android/vending/billing/n;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/android/vending/billing/h;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:J

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/android/vending/billing/m;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/m;Ljava/lang/String;Lcom/android/vending/billing/h;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/vending/billing/n;->g:Lcom/android/vending/billing/m;

    iput-object p2, p0, Lcom/android/vending/billing/n;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/vending/billing/n;->b:Lcom/android/vending/billing/h;

    iput-object p4, p0, Lcom/android/vending/billing/n;->c:Ljava/lang/String;

    iput p5, p0, Lcom/android/vending/billing/n;->d:I

    iput-wide p6, p0, Lcom/android/vending/billing/n;->e:J

    iput-object p8, p0, Lcom/android/vending/billing/n;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/vending/billing/n;->g:Lcom/android/vending/billing/m;

    iget-object v1, p0, Lcom/android/vending/billing/n;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vending/billing/n;->b:Lcom/android/vending/billing/h;

    iget-object v3, p0, Lcom/android/vending/billing/n;->c:Ljava/lang/String;

    iget v4, p0, Lcom/android/vending/billing/n;->d:I

    iget-wide v5, p0, Lcom/android/vending/billing/n;->e:J

    iget-object v7, p0, Lcom/android/vending/billing/n;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/android/vending/billing/m;->a(Ljava/lang/String;Lcom/android/vending/billing/h;Ljava/lang/String;IJLjava/lang/String;)V

    .line 164
    return-void
.end method
