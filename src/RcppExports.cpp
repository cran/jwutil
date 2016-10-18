// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

// setAttrInPlace
void setAttrInPlace(Rcpp::RObject& x, Rcpp::String name, SEXP value);
RcppExport SEXP jwutil_setAttrInPlace(SEXP xSEXP, SEXP nameSEXP, SEXP valueSEXP) {
BEGIN_RCPP
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< Rcpp::RObject& >::type x(xSEXP);
    Rcpp::traits::input_parameter< Rcpp::String >::type name(nameSEXP);
    Rcpp::traits::input_parameter< SEXP >::type value(valueSEXP);
    setAttrInPlace(x, name, value);
    return R_NilValue;
END_RCPP
}
// isRowSorted
LogicalVector isRowSorted(NumericMatrix x);
RcppExport SEXP jwutil_isRowSorted(SEXP xSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericMatrix >::type x(xSEXP);
    rcpp_result_gen = Rcpp::wrap(isRowSorted(x));
    return rcpp_result_gen;
END_RCPP
}
// propRowSorted
double propRowSorted(NumericMatrix x);
RcppExport SEXP jwutil_propRowSorted(SEXP xSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericMatrix >::type x(xSEXP);
    rcpp_result_gen = Rcpp::wrap(propRowSorted(x));
    return rcpp_result_gen;
END_RCPP
}