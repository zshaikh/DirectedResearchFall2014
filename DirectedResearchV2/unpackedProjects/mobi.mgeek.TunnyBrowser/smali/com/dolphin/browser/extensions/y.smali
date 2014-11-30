.class public final Lcom/dolphin/browser/extensions/y;
.super Ljava/lang/Object;
.source "MessageCenter.java"


# static fields
.field private static final a:Lcom/dolphin/browser/extensions/y;


# instance fields
.field private final b:Lcom/dolphin/browser/extensions/IWebViewExtension;

.field private final c:Lcom/dolphin/browser/extensions/IWebViewContextMenuExtension;

.field private final d:Lcom/dolphin/browser/extensions/IWebViewPageExtension;

.field private final e:Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

.field private final f:Lcom/dolphin/browser/extensions/IBrowserExtension;

.field private final g:Lcom/dolphin/browser/extensions/IDownloadCompleteExtension;

.field private final h:Lcom/dolphin/browser/extensions/IBrowserMenuExtension;

.field private final i:Lcom/dolphin/browser/extensions/IBookmarkExtension;

.field private final j:Lcom/dolphin/browser/extensions/IHistoryExtension;

.field private final k:Lcom/dolphin/browser/extensions/ITitleBarExtension;

.field private final l:Lcom/dolphin/browser/extensions/IKeyEventExtension;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 868
    new-instance v0, Lcom/dolphin/browser/extensions/y;

    invoke-direct {v0}, Lcom/dolphin/browser/extensions/y;-><init>()V

    sput-object v0, Lcom/dolphin/browser/extensions/y;->a:Lcom/dolphin/browser/extensions/y;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 878
    new-instance v0, Lcom/dolphin/browser/extensions/ah;

    invoke-direct {v0}, Lcom/dolphin/browser/extensions/ah;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/y;->b:Lcom/dolphin/browser/extensions/IWebViewExtension;

    .line 879
    new-instance v0, Lcom/dolphin/browser/extensions/ag;

    invoke-direct {v0}, Lcom/dolphin/browser/extensions/ag;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/y;->c:Lcom/dolphin/browser/extensions/IWebViewContextMenuExtension;

    .line 880
    new-instance v0, Lcom/dolphin/browser/extensions/aj;

    invoke-direct {v0}, Lcom/dolphin/browser/extensions/aj;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/y;->d:Lcom/dolphin/browser/extensions/IWebViewPageExtension;

    .line 881
    new-instance v0, Lcom/dolphin/browser/extensions/ai;

    invoke-direct {v0}, Lcom/dolphin/browser/extensions/ai;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/y;->e:Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

    .line 882
    new-instance v0, Lcom/dolphin/browser/extensions/aa;

    invoke-direct {v0}, Lcom/dolphin/browser/extensions/aa;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/y;->f:Lcom/dolphin/browser/extensions/IBrowserExtension;

    .line 883
    new-instance v0, Lcom/dolphin/browser/extensions/ac;

    invoke-direct {v0}, Lcom/dolphin/browser/extensions/ac;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/y;->g:Lcom/dolphin/browser/extensions/IDownloadCompleteExtension;

    .line 884
    new-instance v0, Lcom/dolphin/browser/extensions/ab;

    invoke-direct {v0}, Lcom/dolphin/browser/extensions/ab;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/y;->h:Lcom/dolphin/browser/extensions/IBrowserMenuExtension;

    .line 885
    new-instance v0, Lcom/dolphin/browser/extensions/z;

    invoke-direct {v0}, Lcom/dolphin/browser/extensions/z;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/y;->i:Lcom/dolphin/browser/extensions/IBookmarkExtension;

    .line 886
    new-instance v0, Lcom/dolphin/browser/extensions/ad;

    invoke-direct {v0}, Lcom/dolphin/browser/extensions/ad;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/y;->j:Lcom/dolphin/browser/extensions/IHistoryExtension;

    .line 887
    new-instance v0, Lcom/dolphin/browser/extensions/af;

    invoke-direct {v0}, Lcom/dolphin/browser/extensions/af;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/y;->k:Lcom/dolphin/browser/extensions/ITitleBarExtension;

    .line 888
    new-instance v0, Lcom/dolphin/browser/extensions/ae;

    invoke-direct {v0}, Lcom/dolphin/browser/extensions/ae;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/y;->l:Lcom/dolphin/browser/extensions/IKeyEventExtension;

    return-void
.end method

.method public static final a()Lcom/dolphin/browser/extensions/y;
    .locals 1

    .prologue
    .line 875
    sget-object v0, Lcom/dolphin/browser/extensions/y;->a:Lcom/dolphin/browser/extensions/y;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/dolphin/browser/extensions/IWebViewContextMenuExtension;
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/dolphin/browser/extensions/y;->c:Lcom/dolphin/browser/extensions/IWebViewContextMenuExtension;

    return-object v0
.end method

.method public c()Lcom/dolphin/browser/extensions/IWebViewPageExtension;
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/dolphin/browser/extensions/y;->d:Lcom/dolphin/browser/extensions/IWebViewPageExtension;

    return-object v0
.end method

.method public d()Lcom/dolphin/browser/extensions/IWebViewPageExtension2;
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/dolphin/browser/extensions/y;->e:Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

    return-object v0
.end method

.method public e()Lcom/dolphin/browser/extensions/IWebViewExtension;
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/dolphin/browser/extensions/y;->b:Lcom/dolphin/browser/extensions/IWebViewExtension;

    return-object v0
.end method

.method public f()Lcom/dolphin/browser/extensions/IBrowserExtension;
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/dolphin/browser/extensions/y;->f:Lcom/dolphin/browser/extensions/IBrowserExtension;

    return-object v0
.end method

.method public g()Lcom/dolphin/browser/extensions/IDownloadCompleteExtension;
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/dolphin/browser/extensions/y;->g:Lcom/dolphin/browser/extensions/IDownloadCompleteExtension;

    return-object v0
.end method

.method public h()Lcom/dolphin/browser/extensions/IBrowserMenuExtension;
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/dolphin/browser/extensions/y;->h:Lcom/dolphin/browser/extensions/IBrowserMenuExtension;

    return-object v0
.end method

.method public i()Lcom/dolphin/browser/extensions/IBookmarkExtension;
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/dolphin/browser/extensions/y;->i:Lcom/dolphin/browser/extensions/IBookmarkExtension;

    return-object v0
.end method

.method public j()Lcom/dolphin/browser/extensions/IHistoryExtension;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/dolphin/browser/extensions/y;->j:Lcom/dolphin/browser/extensions/IHistoryExtension;

    return-object v0
.end method

.method public k()Lcom/dolphin/browser/extensions/ITitleBarExtension;
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/dolphin/browser/extensions/y;->k:Lcom/dolphin/browser/extensions/ITitleBarExtension;

    return-object v0
.end method

.method public l()Lcom/dolphin/browser/extensions/IKeyEventExtension;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/dolphin/browser/extensions/y;->l:Lcom/dolphin/browser/extensions/IKeyEventExtension;

    return-object v0
.end method
