.class Lcom/dolphin/browser/sonar/ui/b;
.super Ljava/lang/Object;
.source "AnimTextFrame.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/sonar/ui/AnimTextFrame;

.field private final b:F

.field private final c:F

.field private final d:J

.field private e:Lcom/dolphin/browser/sonar/ui/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/sonar/ui/AnimTextFrame;FFJ)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/dolphin/browser/sonar/ui/b;->a:Lcom/dolphin/browser/sonar/ui/AnimTextFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput p2, p0, Lcom/dolphin/browser/sonar/ui/b;->b:F

    .line 258
    iput p3, p0, Lcom/dolphin/browser/sonar/ui/b;->c:F

    .line 259
    iput-wide p4, p0, Lcom/dolphin/browser/sonar/ui/b;->d:J

    .line 260
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/sonar/ui/b;)F
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/dolphin/browser/sonar/ui/b;->b:F

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/sonar/ui/b;)J
    .locals 2

    .prologue
    .line 250
    iget-wide v0, p0, Lcom/dolphin/browser/sonar/ui/b;->d:J

    return-wide v0
.end method


# virtual methods
.method a(Lcom/dolphin/browser/sonar/ui/c;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/dolphin/browser/sonar/ui/b;->e:Lcom/dolphin/browser/sonar/ui/c;

    .line 264
    return-void
.end method

.method a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 267
    iget-object v1, p0, Lcom/dolphin/browser/sonar/ui/b;->e:Lcom/dolphin/browser/sonar/ui/c;

    if-nez v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/sonar/ui/b;->e:Lcom/dolphin/browser/sonar/ui/c;

    .line 271
    invoke-static {v1}, Lcom/dolphin/browser/sonar/ui/c;->c(Lcom/dolphin/browser/sonar/ui/c;)F

    move-result v2

    invoke-static {v1}, Lcom/dolphin/browser/sonar/ui/c;->a(Lcom/dolphin/browser/sonar/ui/c;)F

    move-result v1

    add-float/2addr v1, v2

    const/high16 v2, 0x41a00000

    add-float/2addr v1, v2

    .line 272
    iget-object v2, p0, Lcom/dolphin/browser/sonar/ui/b;->a:Lcom/dolphin/browser/sonar/ui/AnimTextFrame;

    invoke-virtual {v2}, Lcom/dolphin/browser/sonar/ui/AnimTextFrame;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()F
    .locals 2

    .prologue
    .line 276
    iget v0, p0, Lcom/dolphin/browser/sonar/ui/b;->c:F

    iget v1, p0, Lcom/dolphin/browser/sonar/ui/b;->b:F

    sub-float/2addr v0, v1

    return v0
.end method
