// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

#ifdef RCPP_USE_GLOBAL_ROSTREAM
Rcpp::Rostream<true>&  Rcpp::Rcout = Rcpp::Rcpp_cout_get();
Rcpp::Rostream<false>& Rcpp::Rcerr = Rcpp::Rcpp_cerr_get();
#endif

// mergePeaks
Rcpp::DataFrame mergePeaks(Rcpp::DataFrame data, int maxGap);
RcppExport SEXP _DiffBind_mergePeaks(SEXP dataSEXP, SEXP maxGapSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< Rcpp::DataFrame >::type data(dataSEXP);
    Rcpp::traits::input_parameter< int >::type maxGap(maxGapSEXP);
    rcpp_result_gen = Rcpp::wrap(mergePeaks(data, maxGap));
    return rcpp_result_gen;
END_RCPP
}
// mergeScores
Rcpp::List mergeScores(Rcpp::DataFrame sMerged, Rcpp::NumericVector sScore, Rcpp::DataFrame sPeaks, Rcpp::Nullable<Rcpp::LogicalVector> abs);
RcppExport SEXP _DiffBind_mergeScores(SEXP sMergedSEXP, SEXP sScoreSEXP, SEXP sPeaksSEXP, SEXP absSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< Rcpp::DataFrame >::type sMerged(sMergedSEXP);
    Rcpp::traits::input_parameter< Rcpp::NumericVector >::type sScore(sScoreSEXP);
    Rcpp::traits::input_parameter< Rcpp::DataFrame >::type sPeaks(sPeaksSEXP);
    Rcpp::traits::input_parameter< Rcpp::Nullable<Rcpp::LogicalVector> >::type abs(absSEXP);
    rcpp_result_gen = Rcpp::wrap(mergeScores(sMerged, sScore, sPeaks, abs));
    return rcpp_result_gen;
END_RCPP
}
// peakOrder
Rcpp::RObject peakOrder(SEXP schrom, SEXP sleft, SEXP sright);
RcppExport SEXP _DiffBind_peakOrder(SEXP schromSEXP, SEXP sleftSEXP, SEXP srightSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< SEXP >::type schrom(schromSEXP);
    Rcpp::traits::input_parameter< SEXP >::type sleft(sleftSEXP);
    Rcpp::traits::input_parameter< SEXP >::type sright(srightSEXP);
    rcpp_result_gen = Rcpp::wrap(peakOrder(schrom, sleft, sright));
    return rcpp_result_gen;
END_RCPP
}

RcppExport SEXP croi_count_reads(SEXP, SEXP, SEXP, SEXP, SEXP, SEXP, SEXP, SEXP, SEXP, SEXP, SEXP, SEXP, SEXP, SEXP);

static const R_CallMethodDef CallEntries[] = {
    {"_DiffBind_mergePeaks", (DL_FUNC) &_DiffBind_mergePeaks, 2},
    {"_DiffBind_mergeScores", (DL_FUNC) &_DiffBind_mergeScores, 4},
    {"_DiffBind_peakOrder", (DL_FUNC) &_DiffBind_peakOrder, 3},
    {"croi_count_reads", (DL_FUNC) &croi_count_reads, 14},
    {NULL, NULL, 0}
};

RcppExport void R_init_DiffBind(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
